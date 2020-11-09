using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Net;
using System.Threading;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Android.Util;
using Android.Support.V7.App;

namespace WHBillContrast
{
    [Activity(Label = "@string/app_name")]
    public class Main_QtyActivity : Activity
    {
        private WHBillContrastWS.WebService WHBillContrastws = new WHBillContrastWS.WebService();
        private WHBillContrastWS.ResultObj resultObj = new WHBillContrastWS.ResultObj();
        //private int QTY2 = 0;
        //private int SumQty = 0;
        //private string LOT = string.Empty;
        //private string PN = string.Empty;
        //private string Code=string.Empty;

        public string Msgtext = string.Empty;
        private LoginInfo loginInfo = new LoginInfo();

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.main_qty);

            string url = Intent.GetStringExtra("WS_URL");
            loginInfo.User = Intent.GetStringExtra("USER");
            loginInfo.Password = Intent.GetStringExtra("PWD");
            WHBillContrastws.Url = url;
            WHBillContrastws.Timeout = 20000;

            EditText txtCode = FindViewById<EditText>(Resource.Id.txtCode);
            //EditText txtCode223 = FindViewById<EditText>(Resource.Id.txtCode223);


            TextView txtMsg = FindViewById<TextView>(Resource.Id.txtQTY2);
            TextView txtLOT = FindViewById<TextView>(Resource.Id.txtLOT);
            TextView txtPN = FindViewById<TextView>(Resource.Id.txtPN);
            TextView txtSumQTY = FindViewById<TextView>(Resource.Id.txtSumQTY);

            txtMsg.Enabled = false;
            txtLOT.Enabled = false;
            txtPN.Enabled = false;
            txtSumQTY.Enabled = false;
            //TextView txtQty2=FindViewById <TextView>(Resource.Id.txtQTY2)

            // txtCode.SetSelectAllOnFocus(true);
            //  txtCode223.SetSelectAllOnFocus(true);

            txtCode.KeyPress += (object sender, View.KeyEventArgs e) =>
           {
               e.Handled = false;
               if ((e.Event.Action == KeyEventActions.Down) && (e.KeyCode == Keycode.Enter))
               {
                   //txtCode.NextFocusDownId = Resource.Id.btnOk;
                   // txtCode.SetSelectAllOnFocus(true);
                   //txtCode.Focusable = true;
                   // txtCode.RequestFocus();
               }
           };


            txtCode.AfterTextChanged += (object sender, Android.Text.AfterTextChangedEventArgs e) =>
            {
                //txtCode223.Focusable = true;
                //txtCode223.RequestFocus();
                //txtCode.SetSelectAllOnFocus(true);
                // if (!e.HasFocus)
                //{
                // txtCode.SetSelectAllOnFocus(true);
               // txtSumQTY.Text.
                try
                {
                    string[] sArray = txtCode.Text.Trim().Split("$");
                    string PN = sArray[0];
                    string LOT = sArray[1];
                    int QTY2 = Convert.ToInt32(sArray[2]);
                    if (txtPN.Length() == 0)
                    {
                        txtPN.Text = PN;
                        txtLOT.Text = LOT;
                        txtSumQTY.Text = QTY2.ToString();
                        txtMsg.Text = QTY2.ToString();
                        txtCode.SetSelectAllOnFocus(true);
                    }
                    else
                    {
                        if (txtLOT.Text.Trim() == LOT)
                        {
                            txtSumQTY.Text = (Convert.ToInt32(txtSumQTY.Text) + QTY2).ToString();
                            txtMsg.Text = txtMsg.Text + "+" + QTY2.ToString();
                            txtCode.SetSelectAllOnFocus(true);

                        }
                        else
                        {
                            var alertDialog1 = new Android.App.AlertDialog.Builder(this).Create();
                            // 設定Title
                            alertDialog1.SetTitle("警告");
                            // 內文
                            alertDialog1.SetMessage("非相同LOT，是否替换");
                            alertDialog1.SetIcon(Resource.Drawable.abc_btn_radio_material);
                            //第一顆按鈕
                            alertDialog1.SetButton("OK", (sender2, args) =>
                            {
                                txtPN.Text = PN;
                                txtLOT.Text = LOT;
                                txtSumQTY.Text = QTY2.ToString();
                                txtMsg.Text = QTY2.ToString();
                                Toast.MakeText(this, "已重置", ToastLength.Short).Show();

                            });
                            //第二顆按鈕
                            alertDialog1.SetButton2("取消", (sender2, args) =>
                            {
                                Toast.MakeText(this, "已取消", ToastLength.Short).Show();
                            });
                            alertDialog1.Show();
                            txtCode.SetSelectAllOnFocus(true);

                        }

                    }

                    //txtCode.RequestFocus();
                    //txtCode.Focusable = true;
                    //txtCode.Text = "";
                    //txtCode.Enabled = true;
                   txtCode.SetSelectAllOnFocus(true);
                    txtCode.SelectAll();

                }
                catch (Exception ex)
                {
                    Toast.MakeText(this, ex.Message, ToastLength.Long).Show();
                    AlertMsg(this, ex.Message, "确定");
                }
                // }
            };
            //txtCode.FocusChange += (object sender, View.FocusChangeEventArgs e) =>
            //{
            //    //txtCode223.Focusable = true;
            //    //txtCode223.RequestFocus();
            //    //txtCode.SetSelectAllOnFocus(true);
            //    if (!e.HasFocus)
            //    {
            //       // txtCode.SetSelectAllOnFocus(true);
            //        try
            //        {
            //            string[] sArray = txtCode.Text.Trim().Split("$");
            //            string PN = sArray[0];
            //            string LOT = sArray[1];
            //            int QTY2 = Convert.ToInt32(sArray[2]);
            //            if (txtPN.Length() == 0)
            //            {
            //                txtPN.Text = PN;
            //                txtLOT.Text = LOT;
            //                txtSumQTY.Text = QTY2.ToString();
            //                txtMsg.Text = QTY2.ToString();
            //            }
            //            else
            //            {
            //                if (txtLOT.Text.Trim() == LOT)
            //                {
            //                    txtSumQTY.Text = (Convert.ToInt32(txtSumQTY.Text) + QTY2).ToString();
            //                    txtMsg.Text = txtMsg.Text +"+" + QTY2.ToString();

            //                }
            //                else
            //                {
            //                    var alertDialog1 = new Android.App.AlertDialog.Builder(this).Create();
            //                    // 設定Title
            //                    alertDialog1.SetTitle("警告");
            //                    // 內文
            //                    alertDialog1.SetMessage("非相同LOT，是否替换");
            //                    alertDialog1.SetIcon(Resource.Drawable.abc_btn_radio_material);
            //                    //第一顆按鈕
            //                    alertDialog1.SetButton("OK", (sender2, args) =>
            //                    {
            //                        txtPN.Text = PN;
            //                        txtLOT.Text = LOT;
            //                        txtSumQTY.Text = QTY2.ToString();
            //                        txtMsg.Text = QTY2.ToString();
            //                        Toast.MakeText(this, "已重置", ToastLength.Short).Show();

            //                    });
            //                    //第二顆按鈕
            //                    alertDialog1.SetButton2("取消", (sender2, args) =>
            //                    {
            //                        Toast.MakeText(this, "已取消", ToastLength.Short).Show();
            //                    });
            //                    alertDialog1.Show();


            //                }

            //            }

            //         //   txtCode.Focusable = true;
            //           // txtCode.RequestFocus();
            //            txtCode.Text = "";
            //            //txtCode.Enabled = true;
            //            txtCode.SetSelectAllOnFocus(true);

            //        }
            //        catch (Exception ex)
            //        {
            //            Toast.MakeText(this, ex.Message, ToastLength.Long).Show();
            //            AlertMsg(this, ex.Message, "确定");
            //        }
            //    }
            //};

            //txtCode223.KeyPress += (object sender, View.KeyEventArgs e) =>
            //{
            //    e.Handled = false;
            //    if ((e.Event.Action == KeyEventActions.Down) && (e.KeyCode == Keycode.Enter))
            //    {
            //        //txtCode.NextFocusDownId = Resource.Id.btnOk;
            //        txtCode.SetSelectAllOnFocus(true);
            //        txtCode.Focusable = true;
            //        txtCode.RequestFocus();
            //    }
            //};

            //txtCode223.FocusChange += (object sender, View.FocusChangeEventArgs e) =>
            //{
            //    //txtCode223.Focusable = true;
            //    //txtCode223.RequestFocus();
            //    txtCode223.SetSelectAllOnFocus(true);
            //    if (!e.HasFocus)
            //    {
            //        txtCode223.SetSelectAllOnFocus(true);
            //        try
            //        {
            //            string[] sArray = txtCode223.Text.Trim().Split("$");
            //            string PN = sArray[0];
            //            string LOT = sArray[1];
            //            int QTY2 = Convert.ToInt32(sArray[2]);
            //            if (txtPN.Length() == 0)
            //            {
            //                txtPN.Text = PN;
            //                txtLOT.Text = LOT;
            //                txtSumQTY.Text = QTY2.ToString();
            //                txtMsg.Text = QTY2.ToString();
            //            }
            //            else
            //            {
            //                if (txtLOT.Text.Trim() == LOT)
            //                {
            //                    txtSumQTY.Text = (Convert.ToInt32(txtSumQTY.Text) + QTY2).ToString();
            //                    txtMsg.Text = txtMsg.Text + "+" + QTY2.ToString();

            //                }
            //                else
            //                {
            //                    var alertDialog1 = new Android.App.AlertDialog.Builder(this).Create();
            //                    // 設定Title
            //                    alertDialog1.SetTitle("警告");
            //                    // 內文
            //                    alertDialog1.SetMessage("非相同LOT，是否替换");
            //                    alertDialog1.SetIcon(Resource.Drawable.abc_btn_radio_material);
            //                    //第一顆按鈕
            //                    alertDialog1.SetButton("OK", (sender2, args) =>
            //                    {
            //                        txtPN.Text = PN;
            //                        txtLOT.Text = LOT;
            //                        txtSumQTY.Text = QTY2.ToString();
            //                        txtMsg.Text = QTY2.ToString();
            //                        Toast.MakeText(this, "已重置", ToastLength.Short).Show();

            //                    });
            //                    //第二顆按鈕
            //                    alertDialog1.SetButton2("取消", (sender2, args) =>
            //                    {
            //                        Toast.MakeText(this, "已取消", ToastLength.Short).Show();
            //                    });
            //                    alertDialog1.Show();


            //                }

            //            }

            //            txtCode.Focusable = true;
            //            txtCode.RequestFocus();

            //            txtCode.SetSelectAllOnFocus(true);

            //        }
            //        catch (Exception ex)
            //        {
            //            Toast.MakeText(this, ex.Message, ToastLength.Long).Show();
            //            AlertMsg(this, ex.Message, "确定");
            //        }
            //    }
            //};
            // Create your application here
        }

        public static void AlertMsg(Main_QtyActivity a, string msg, string btnMsg)
        {
            Android.App.AlertDialog alertDialog = new Android.App.AlertDialog.Builder(a).Create();
            alertDialog.SetTitle("系统提示");
            alertDialog.SetMessage(msg);
            alertDialog.SetButton(btnMsg, (sender, args) => { });
            alertDialog.Show();
        }

    }

    public class LoginInfo
    {
        public string User { get; set; }
        public string Password { get; set; }
    }
}