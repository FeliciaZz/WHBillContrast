using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Net;
using System.Threading;

using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Content.Res;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using Java.Net;


namespace WHBillContrast
{
    [Activity(Label = "LoginActivity", NoHistory = false)]
    public class LoginActivity:Activity
    {
        private static string configPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.LocalApplicationData), "Config.txt");
        private static string appPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.LocalApplicationData), Resource.String.app_name + ".apk");
        private static string url = string.Empty;
        private static string appUrl = string.Empty;
        private static string appDesc = string.Empty;
        private static string newVersion = string.Empty;
        private WHBillContrastWS.WebService WHBillContrastWS = new WHBillContrastWS .WebService();
        DateTime? lastBackKeyDownTime;
        /* 下载中 */
        private static int Download = 1;
        /* 记录进度条数量 */
        private int progress;
        /* 是否取消更新 */
        private Boolean cancelUpdate = false;
        /* 更新进度条 */
        private ProgressBar mProgress;
        private Context context;
        private AlertDialog alertDialog;

        #region 函数-检测ip地址
        public bool CheckIP()
        {
            string ip = GetIPAddress();
            if (!string.IsNullOrEmpty(ip))
            {
                return true;
            }
            return false;
        }

        public string GetIPAddress()
        {
            string AddressIP = string.Empty;
            foreach (IPAddress _IPAddress in Dns.GetHostEntry(Dns.GetHostName()).AddressList)
            {
                if (_IPAddress.AddressFamily.ToString() == "InterNetwork")
                {
                    AddressIP = _IPAddress.ToString();
#if DEBUG
                    if (AddressIP.Contains("192.168"))
                    {
                        return AddressIP;
                    }
#endif
                    if (AddressIP.Contains("172.") || AddressIP.Contains("10."))
                    {
                        return AddressIP;
                    }
                }
            }
            return null;
        }
        #endregion

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            
            //create your application here,调用layout页面
            SetContentView(Resource.Layout.Login);

            #region 页面设置
            DisplayMetrics dm = new DisplayMetrics();
            WindowManager.DefaultDisplay.GetMetrics(dm);
            int _height = dm.HeightPixels;
            LinearLayout linearTop = FindViewById<LinearLayout>(Resource.Id.loginTop);
            ViewGroup.LayoutParams lp = linearTop.LayoutParameters;
            lp.Height = _height / 4 - 80; 
            #endregion 

            //配置框不显示，且不占用布局位置
            LinearLayout linearConfig = FindViewById<LinearLayout>(Resource.Id.loginConfig);
            linearConfig.Visibility = ViewStates.Gone;
            LinearLayout linearLogin = FindViewById<LinearLayout>(Resource.Id.loginLogin);

            TextView txtTtitle = FindViewById<TextView>(Resource.Id.txtTtitle);
            txtTtitle.Text = Resources.GetString(Resource.String.app_name);
            //txtTtitle.Text = "票贴比对";

            //报错提示信息栏/版本信息栏/当前服务器栏
            TextView txtMsg = FindViewById<TextView>(Resource.Id.txtMsg);
            TextView txtVersion = FindViewById<TextView>(Resource.Id.txtVersion);
            TextView txtCurrentServer = FindViewById<TextView>(Resource.Id.txtCurrentServer);

            //用户登录信息
            EditText user = FindViewById<EditText>(Resource.Id.txtUser);
            EditText pwd = FindViewById<EditText>(Resource.Id.txtPwd);
            user.SetSelectAllOnFocus(true);
            pwd.SetSelectAllOnFocus(true);

            txtVersion.Text = "程序版本" + GetAppVersionName(this);
            Button btnLogin = FindViewById<Button>(Resource.Id.btnLogin);
           
            if (!CheckIP())
            {
                Toast.MakeText(this, "未连入MES网络或生产网络!", ToastLength.Long).Show();
                txtMsg.Text = "未连入MES网络或生产网络!";
                btnLogin.Enabled = false;
            }
            
            //初步设定配置登录服务配置信息
            string config = "mycmesflexpda01.mflex.com.cn,80,WHBillContrastWS,WebService.asmx";
            //若没有config则自动创建
            if (!File.Exists(configPath))
            {
                //default
                string ip = GetIPAddress();
                if (ip.StartsWith("172.16") || ip.StartsWith("10.2"))
                    config = "messmtpda.mflex.com.cn,80,FeederToSlotWS,WebService.asmx";
                else if (ip.StartsWith("172.18") || ip.StartsWith("10.13"))
                    config = "mycmesflexpda01.mflex.com.cn,80,WHBillContrastWS,WebService.asmx";
                File.WriteAllText(configPath, config);
            }

            //若有config则自动获取
            string[] path = File.ReadAllText(configPath).Split(',');
            if (path.Length == 4)
            {
                url = @"http://" + path[0] + ":" + path[1] + @"/" + path[2] + @"/" + path[3];
                txtCurrentServer.Text = path[0];
            }
            else
            {
                txtMsg.Text = "网络配置存在异常，请重新配置并重启程序!";
                btnLogin.Enabled = false;
                File.WriteAllText(configPath, config);
            }
            btnLogin.Click += (sender, e) =>
            {
                try
                {
                    if (string.IsNullOrEmpty(user.Text.Trim()))
                    {
                        AlertMsg(this, "MES账号为空!", "确定");
                        user.RequestFocus();
                        return;
                    }

                    if (string.IsNullOrEmpty(pwd.Text.Trim()))
                    {
                        AlertMsg(this, "MES密码为空!", "确定");
                        pwd.RequestFocus();
                        return;
                    }
                    WHBillContrastWS.Url = url;
                    WHBillContrastWS.Timeout = 8000;
                    WHBillContrastWS.ResultObj resultObj = new WHBillContrastWS.ResultObj();
                    try
                    {
                        if (WHBillContrastWS.CanLogin(ref resultObj, user.Text.Trim(), pwd.Text.Trim()))
                        {
                            pwd.Text = "";
                            //登录后的主界面
                            var intent = new Intent(this, typeof(NaviActivity));
                            intent.PutExtra("WS_URL", url);
                            intent.PutExtra("USER", user.Text.Trim());
                            intent.PutExtra("PWD", pwd.Text.Trim());
                            StartActivityForResult(intent, 1);
                        }
                        else
                        {
                            Toast.MakeText(this, "登录失败："+resultObj.ResultMesg, ToastLength.Long).Show();
                            user.RequestFocus();
                            return;
                        }
                    }
                    catch (Exception ex)
                    {
                        if (ex.Message.ToUpper().Contains("TIMED OUT"))
                        {
                            AlertMsg(this, "提交超时或配置服务地址有误!", "确定");
                        }
                        else
                        {
                            AlertMsg(this, ex.Message, "确定");
                        }
                        user.RequestFocus();
                        return;
                    }

                }
                catch (Exception ex)
                {
                    Toast.MakeText(this, "登录失败：" + ex.Message, ToastLength.Long).Show();
                    AlertMsg(this, "登录失败：" + ex.Message, "确定");
                    user.RequestFocus();
                    return;
                }
            };
            EditText txtServerName = FindViewById<EditText>(Resource.Id.txtServerName);
            EditText txtServerPort = FindViewById<EditText>(Resource.Id.txtServerPort);
            EditText txtServerFloder = FindViewById<EditText>(Resource.Id.txtServerFloder);
            EditText txtServerPage = FindViewById<EditText>(Resource.Id.txtServerPage);
            Button btnConfig = FindViewById<Button>(Resource.Id.btnConfig);
            btnConfig.Click += (sender, e) =>
            {
                //FindViewById<TextView>(Resource.Id.txtPwd).SetTextColor(ColorStateList.ValueOf(Android.Graphics.Color.Red));

                try
                {
                    linearLogin.Visibility = ViewStates.Gone;
                    linearConfig.Visibility = ViewStates.Visible;
                    path = File.ReadAllText(configPath).Split(',');
                    string url = string.Empty;
                    if (path.Length == 4)
                    {
                        txtServerName.Text = path[0];
                        txtServerPort.Text = path[1];
                        txtServerFloder.Text = path[2];
                        txtServerPage.Text = path[3];
                    }
                }
                catch (Exception ex)
                {
                    Toast.MakeText(this, ex.Message, ToastLength.Long).Show();
                    AlertMsg(this, ex.Message, "确定");
                    return;
                }
            };

            Button btnSaveConfig = FindViewById<Button>(Resource.Id.btnSaveConfig);
            btnSaveConfig.Click += (sender, e) =>
            {
                try
                {
                    if (string.IsNullOrEmpty(txtServerName.Text.Trim()))
                    {
                        Toast.MakeText(this, "ServerName为空!", ToastLength.Long).Show();
                        txtServerName.RequestFocus();
                        return;
                    }

                    if (string.IsNullOrEmpty(txtServerPort.Text.Trim()))
                    {
                        Toast.MakeText(this, "ServerPort为空!", ToastLength.Long).Show();
                        txtServerPort.RequestFocus();
                        return;
                    }

                    if (string.IsNullOrEmpty(txtServerFloder.Text.Trim()))
                    {
                        Toast.MakeText(this, "ServerFloder为空!", ToastLength.Long).Show();
                        txtServerFloder.RequestFocus();
                        return;
                    }

                    if (string.IsNullOrEmpty(txtServerPage.Text.Trim()))
                    {
                        Toast.MakeText(this, "ServerPage为空!", ToastLength.Long).Show();
                        txtServerPage.RequestFocus();
                        return;
                    }

                    config = txtServerName.Text.Trim() + "," + txtServerPort.Text.Trim() + "," + txtServerFloder.Text.Trim() + "," + txtServerPage.Text.Trim();
                    txtCurrentServer.Text = txtServerName.Text.Trim();
                    File.WriteAllText(configPath, config);

                    url = @"http://" + txtServerName.Text.Trim() + ":" + txtServerPort.Text.Trim() + @"/" + txtServerFloder.Text.Trim() + @"/" + txtServerPage.Text.Trim();

                    linearLogin.Visibility = ViewStates.Visible;
                    linearConfig.Visibility = ViewStates.Gone;

                    Toast.MakeText(this, "保存成功!", ToastLength.Long).Show();
                    user.RequestFocus();
                    return;
                }
                catch (Exception ex)
                {
                    Toast.MakeText(this, ex.Message, ToastLength.Long).Show();
                    AlertMsg(this, ex.Message, "确定");
                    return;
                }
            };

            Button btnCancel = FindViewById<Button>(Resource.Id.btnCancel);

            btnCancel.Click += (sender, e) =>
            {
                try
                {
                    linearLogin.Visibility = ViewStates.Visible;
                    linearConfig.Visibility = ViewStates.Gone;
                }
                catch (Exception ex)
                {
                    Toast.MakeText(this, ex.Message, ToastLength.Long).Show();
                    AlertMsg(this, ex.Message, "确定");
                    return;
                }
            };
            
            //if (IsUpdate(url))
            //{
            //    var strversion = GetAppVersionName(this);
            //    Toast.MakeText(this, "APP版本更新" + strversion, ToastLength.Short).Show();
            //    // 显示提示对话框
            //    ShowNoticeDialog(this);
            //    return;
            //}            




        }
        public override bool OnKeyDown(Keycode keyCode, KeyEvent e)
        {
            if (keyCode == Keycode.Back && e.Action == KeyEventActions.Down)
            {
                if (!lastBackKeyDownTime.HasValue || DateTime.Now - lastBackKeyDownTime.Value > new TimeSpan(0, 0, 2))
                {
                    Toast.MakeText(this.ApplicationContext, "再按一次退出程序", ToastLength.Short).Show();
                    lastBackKeyDownTime = DateTime.Now;
                }
                else
                {
                    Finish();
                }
                return true;
            }
            return base.OnKeyDown(keyCode, e);
        }
        public static void AlertMsg(LoginActivity a, string msg, string btnMsg)
        {
            AlertDialog alertDialog = new AlertDialog.Builder(a).Create();
            alertDialog.SetTitle("系统提示");
            alertDialog.SetMessage(msg);
            alertDialog.SetButton(btnMsg, (sender, args) => { });
            alertDialog.Show();
        }

    #region 函数-软件自动更新安装包
         // 检查软件是否有更新版本
        private bool IsUpdate(string url)
        {
            var strversion = GetAppVersionName(this);
            try
            {
                //AndroidPDAWS.WebService android = new AndroidPDAWS.WebService();
                
                //android.Url = url;
                //android.Timeout = 50000;

                //var strupdateVersion = android.GetVersion("FeederToSlot", ref appUrl, ref appDesc);
                //if (strversion != strupdateVersion)
                //{
                //    newVersion = strupdateVersion;
                //    return true;
                //}
                //else
                //{
                //    return false;
                //}
                return false;
            }
            catch (Exception ex)
            {
                Toast.MakeText(this, "更新" + ex.Message, ToastLength.Short).Show();
                return false;
            }
        }

        //显示软件更新对话框
        private void ShowNoticeDialog(Context context)
        {
            try
            {
                this.context = context;
                // 构造对话框
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                alertDialog = builder.Create();
                alertDialog.SetTitle("版本更新");
                alertDialog.SetMessage(appDesc);//更新内容
                //alertDialog.SetButton("取消", (sender, args) =>
                //{
                //    alertDialog.Dismiss();
                //});
                alertDialog.SetButton2("更新", (sender, orgs) =>
                {
                    ShowDownloadDialog();
                });
                alertDialog.Show();

            }
            catch (Exception ex)
            {
                Toast.MakeText(this, ex.Message, ToastLength.Short).Show();
                return;
            }

        }

        /**
        * 显示软件下载对话框
        */
        private void ShowDownloadDialog()
        {
            // 构造软件下载对话框
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            alertDialog = builder.Create();
            builder.SetTitle(Resource.String.softupdate_progress);
            // 给下载对话框增加进度条
            LayoutInflater inflater = LayoutInflater.From(context);
            View v = inflater.Inflate(Resource.Drawable.softupdate_progress, null);
            mProgress = (ProgressBar)v.FindViewById(Resource.Id.update_progress);
            builder.SetView(v);
            alertDialog = builder.Create();
            alertDialog.SetTitle("正在下载更新");
            //取消更新
            alertDialog.SetButton("取消更新", (sender, orgs) =>
            {
                alertDialog.Dismiss();
                cancelUpdate = true;
            });

            alertDialog.Show();
            // 下载文件
            //DownloadApk();
            new Thread(DownloadApk).Start();
        }

        public void DownloadApk()
        {
            var filePath = "";
            try
            {
                URL url = new URL(appUrl);
                // 创建连接
                HttpURLConnection conn = (HttpURLConnection)url.OpenConnection();
                conn.Connect();

                // 获取文件大小
                int length = conn.ContentLength;
                // 创建输入流
                Stream Ins = conn.InputStream;

                Java.IO.File file = new Java.IO.File(appPath);
                // 判断文件目录是否存在
                if (!file.Exists())
                {
                    //创建文件夹
                    file.Mkdir();
                }
                else
                {
                    if (System.IO.File.Exists(filePath))
                    {
                        System.IO.File.Delete(filePath);
                    }
                }
                FileStream fos = new FileStream(filePath, FileMode.Create);
                int count = 0;
                // 缓存
                byte[] buf = new byte[512];
                // 写入到文件中
                do
                {
                    int numread = Ins.Read(buf, 0, 512);
                    count += numread;
                    // 计算进度条位置
                    progress = (int)(((float)count / length) * 100);
                    // 更新进度
                    HandleMessage(Download);
                    if (numread <= 0)
                    {
                        // 下载完成
                        Download = 2;
                        break;
                    }
                    // 写入文件
                    fos.Write(buf, 0, numread);
                } while (!cancelUpdate);// 点击取消就停止下载.
                fos.Close();

                Ins.Close();
                //}
            }
            catch (Exception ex)
            {
                Toast.MakeText(this, ex.Message, ToastLength.Long).Show();
                return;
            }

            // 取消下载对话框显示
            alertDialog.Dismiss();
            installApk(filePath);
        }

        //获取当前版本号

        public string GetAppVersionName(Context context)
        {
            string versionName = "";

            int versionCode = 0;
            try
            {
                PackageManager pm = context.PackageManager;
                PackageInfo pi = pm.GetPackageInfo(context.PackageName, 0);

                versionName = pi.VersionName;
                versionCode = pi.VersionCode;
            }
            catch (Exception e)
            {
                return e.Message;
            }

            if (versionName == null || versionName.Length <= 0)
            {
                versionName = "";
            }

            return versionName;
        }

        //安装APK文件
        private void installApk(string filePath)
        {
            Java.IO.File file = new Java.IO.File(filePath);
            if (!file.Exists())
            {
                return;
            }
            // 通过Intent安装APK文件
            Intent intent = new Intent(Intent.ActionView);
            intent.SetDataAndType(Android.Net.Uri.Parse("file://" + filePath), "application/vnd.android.package-archive");
            intent.SetFlags(ActivityFlags.NewTask);
            context.StartActivity(intent);
        }

        public void HandleMessage(int Download)
        {
            switch (Download)
            {
                // 正在下载
                case 1:
                    // 设置进度条位置
                    mProgress.Progress = progress;
                    break;
                case 2:
                    // 安装文件
                    //installApk();
                    break;
                default:
                    break;
            }
        }

        #endregion

    }






}