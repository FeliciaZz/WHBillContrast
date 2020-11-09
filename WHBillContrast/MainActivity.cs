using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Net;
using System.Threading;

using Android.App;
using Android.OS;
using Android.Support.V7.App;
using Android.Runtime;
using Android.Widget;
using Android.Util;
using Android.Views;


namespace WHBillContrast
{
    [Activity(Label = "@string/app_name")]
    public class MainActivity : Activity
    {
        private WHBillContrastWS.WebService WHBillContrastws = new WHBillContrastWS.WebService();
        private WHBillContrastWSC.WebService WHBillContrastwsc = new WHBillContrastWSC.WebService();
        private WHBillContrastWS.ResultObj resultObj = new WHBillContrastWS.ResultObj();
        private LoginInfo loginInfo = new LoginInfo();
        private int VQTY = 0;
        private string VCUSTOMERPN = string.Empty;
        private string VMPN = string.Empty;
        private string VCOOCN = string.Empty;
        private string WCOOCN = string.Empty;
        private string WCUSTOMERPN = string.Empty;
        private string WMPN = string.Empty;
        private int WQTY = 0;
        private string OPERATORS = string.Empty;
        private string REMARK = "不一致";

        public string Msgtext = string.Empty;
        protected override void OnCreate(Bundle savedInstanceState)
        {
           //this.SetTheme(Android.Resource.Style.ThemeNoTitleBarFullScreen);

            base.OnCreate(savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.main);

            string url = Intent.GetStringExtra("WS_URL");
            loginInfo.User = Intent.GetStringExtra("USER");
            loginInfo.Password = Intent.GetStringExtra("PWD");
            WHBillContrastws.Url = url;
            WHBillContrastws.Timeout = 20000;

            //报错提示信息栏/版本信息栏/当前服务器栏
            TextView txtMsg = FindViewById<TextView>(Resource.Id.txtVContrast);
            TextView txtSame = FindViewById<TextView>(Resource.Id.txtSame);
            TextView txtDifferent = FindViewById<TextView>(Resource.Id.txtDifferent);

            //用户登录信息
            EditText txtVCode = FindViewById<EditText>(Resource.Id.txtVCode);
            EditText txtWCode = FindViewById<EditText>(Resource.Id.txtWCode);
            txtVCode.SetSelectAllOnFocus(true);
            txtWCode.SetSelectAllOnFocus(true);
            Button btnOK= FindViewById<Button>(Resource.Id.btnOk);


            btnOK.Click += (sender, e) =>
            {
                txtVCode.Text = "";
                txtWCode.Text = "";
                txtMsg.Text = "";
                txtVCode.RequestFocus();
                txtSame.Visibility = ViewStates.Gone;
                txtDifferent.Visibility = ViewStates.Gone;
            };

            //txtWCode.TextChanged += (object sender, View.change e) =>
            // {

            // };
            txtWCode.AfterTextChanged += (object sender, Android.Text.AfterTextChangedEventArgs e) =>
            {
                if(txtWCode.Text.Trim ().Length!=0)
                {
                    try
                    {
                        
                        string config = "mycflexibd01.mflex.com.cn,80,WHBillContrastWSC,WebService.asmx";
                        string[] path = config.Split(',');
                        string url2 = @"http://" + path[0] + ":" + path[1] + @"/" + path[2] + @"/" + path[3];
                        WHBillContrastwsc.Url = url2;
                        WHBillContrastws.Timeout = 20000;

                        bool issameO = IsSame(txtVCode.Text, txtWCode.Text);
                        txtMsg.Text = Msgtext;

                        string txtMsgError = WHBillContrastwsc.InsertLog(VQTY, VCUSTOMERPN, VMPN, VCOOCN, WQTY, WCUSTOMERPN, WMPN, WCOOCN, OPERATORS,REMARK);

                        if (issameO)
                        {
                            if (txtMsgError == "0")
                            {
                                txtSame.Visibility = ViewStates.Visible;
                                txtDifferent.Visibility = ViewStates.Gone;
                            }
                            else
                            {
                                //if(AlertMsg(this, txtMsgError, "确定") == 1)
                                //{

                                //}
                                AlertMsg(this, txtMsgError, "确定");
                            }

                        }
                        else
                        {
                            txtSame.Visibility = ViewStates.Gone;
                            txtDifferent.Visibility = ViewStates.Visible;
                        }

                    }
                    catch (Exception ex)
                    {
                        Toast.MakeText(this, ex.Message, ToastLength.Long).Show();
                        AlertMsg(this, ex.Message, "确定");
                    }
                }

                

            };

             txtWCode.KeyPress += (object sender, View.KeyEventArgs e) =>
            {
                e.Handled = false;
                if ((e.Event.Action == KeyEventActions.Down) && (e.KeyCode == Keycode.Enter))
                {
                    txtWCode.NextFocusDownId = Resource.Id.btnOk;
                }
            };
            


            //txtWCode.FocusChange += (object sender, View.FocusChangeEventArgs e) =>
            //{
            //    if (!e.HasFocus)
            //    {
            //        try
            //        {
            //            bool issameO = IsSame(txtVCode.Text, txtWCode.Text);
            //            txtMsg.Text = Msgtext;

            //            if (issameO)
            //            {
            //                txtSame.Visibility = ViewStates.Visible;
            //                txtDifferent.Visibility = ViewStates.Gone;
            //            }
            //            else
            //            {
            //                txtSame.Visibility = ViewStates.Gone;
            //                txtDifferent.Visibility = ViewStates.Visible;
            //            }


            //        }
            //        catch (Exception ex)
            //        {
            //            Toast.MakeText(this, ex.Message, ToastLength.Long).Show();
            //            AlertMsg(this, ex.Message, "确定");
            //        }
            //    }
            //};





        }
        public static void AlertMsg(MainActivity a, string msg, string btnMsg)
        {
            Android.App.AlertDialog alertDialog = new Android.App.AlertDialog.Builder(a).Create();
            alertDialog.SetTitle("系统提示");
            alertDialog.SetMessage(msg);
            alertDialog.SetButton(btnMsg, (sender, args) => { });
            alertDialog.Show();
        }
        #region 获取字符串所需数字，并判断是否相同
        public bool IsSame(string vCode, string wCode)
        {
            //int vqty = 0;
            //int wqty = 0;
            //string vcpn = string.Empty;
            //string wcpn = string.Empty;
            //string vmpn = string.Empty;
            //string wmpn = string.Empty;
            VCOOCN = vCode;
            WCOOCN = wCode;
            VQTY = Convert.ToInt32( MidStrEx(vCode, "(D)", "$$(E)"));
            WQTY = Convert.ToInt32( MidStrEx(wCode, "(D)", "$$(E)"));
            VCUSTOMERPN = MidStrEx(vCode, "(C)", "$$(D)");
            WCUSTOMERPN = MidStrEx(wCode, "(C)", "$$(D)");
            VMPN = MidStrEx(vCode, "(F)", "$$(G)");
            WMPN = MidStrEx(wCode, "(F)", "$$(G)");

            Msgtext = "QTY:" + VQTY.ToString() + "," + WQTY.ToString() + "\r\n";
            Msgtext += "CPN:" + VCUSTOMERPN + "," + WCUSTOMERPN + "\r\n";
            Msgtext += "MPN:" + VMPN + "," + WMPN ;

            OPERATORS = loginInfo.User;

            if (VQTY == WQTY && VCUSTOMERPN == WCUSTOMERPN && WMPN == VMPN)
            {
                REMARK = "一致";
                return true;
            }

            REMARK = "不一致";
            return false;
          //  return false;
            
            
        }



        #endregion




        //截取特定字符串中间的字符串
        public static string MidStrEx(string sourse, string startstr, string endstr)
        {
            string result = string.Empty;
            int startindex, endindex;
            try
            {
                startindex = sourse.IndexOf(startstr);
                if (startindex == -1)
                    return result;
                string tmpstr = sourse.Substring(startindex + startstr.Length);
                endindex = tmpstr.IndexOf(endstr);           
                if (endindex == -1)
                    return result;
                result = tmpstr.Remove(endindex);
            }
            catch (Exception ex)
            {
                //Log.WriteLog("MidStrEx Err:" + ex.Message);
            }
            return result;
        }


    }
}