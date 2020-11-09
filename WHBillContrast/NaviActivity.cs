using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace WHBillContrast
{
    [Activity(Label = "NaviActivity")]
    public class NaviActivity : Activity
    {
        DateTime? lastBackKeyDownTime;//记录返回时间
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);


            // Create your application here
            SetContentView(Resource.Layout.navi);
         
            string url = Intent.GetStringExtra("WS_URL");
            string user = Intent.GetStringExtra("USER");
            string pwd = Intent.GetStringExtra("PWD");

            Button btnFeeder = FindViewById<Button>(Resource.Id.btnFeeder);
            btnFeeder.Click += (sender, e) =>
            {
                try
                {
                    var intent = new Intent(this, typeof(Main_BarCodeActivity));
                    intent.PutExtra("WS_URL", url);
                    intent.PutExtra("USER", user);
                    intent.PutExtra("PWD", pwd);
                    StartActivityForResult(intent, 1);
                }
                catch (Exception ex)
                {
                    Toast.MakeText(this, ex.Message, ToastLength.Long).Show();
                    AlertMsg(this, ex.Message, "确定");
                }
            };
            Button btnUnFeeder = FindViewById<Button>(Resource.Id.btnUnFeeder);

            btnUnFeeder.Click += (sender, e) =>
            {
                try
                {
                    var intent = new Intent(this, typeof(Main_QtyActivity));
                    intent.PutExtra("WS_URL", url);
                    intent.PutExtra("USER", user);
                    intent.PutExtra("PWD", pwd);
                    StartActivityForResult(intent, 1);
                }
                catch (Exception ex)
                {
                    Toast.MakeText(this, ex.Message, ToastLength.Long).Show();
                    AlertMsg(this, ex.Message, "确定");
                }
            };


            Button btnFeeder2 = FindViewById<Button>(Resource.Id.btnFeeder2);

            btnFeeder2.Click += (sender, e) =>
            {
                try
                {
                    var intent = new Intent(this, typeof(MainActivity));
                    intent.PutExtra("WS_URL", url);
                    intent.PutExtra("USER", user);
                    intent.PutExtra("PWD", pwd);
                    StartActivityForResult(intent, 1);
                }
                catch (Exception ex)
                {
                    Toast.MakeText(this, ex.Message, ToastLength.Long).Show();
                    AlertMsg(this, ex.Message, "确定");
                }
            };
        }
        public static void AlertMsg(NaviActivity a, string msg, string btnMsg)
        {
            AlertDialog alertDialog = new AlertDialog.Builder(a).Create();
            alertDialog.SetTitle("系统提示");
            alertDialog.SetMessage(msg);
            alertDialog.SetButton(btnMsg, (sender, args) => { });
            alertDialog.Show();
        }

        public override bool OnKeyDown(Keycode keyCode, KeyEvent e)
        {
            if (keyCode == Keycode.Back && e.Action == KeyEventActions.Down)
            {
                if (!lastBackKeyDownTime.HasValue || DateTime.Now - lastBackKeyDownTime.Value > new TimeSpan(0, 0, 2))
                {
                    Toast.MakeText(this.ApplicationContext, "再按一次退出登陆", ToastLength.Short).Show();
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

    }
}