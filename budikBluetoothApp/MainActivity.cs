using System;
using Android.App;
using Android.OS;
using Android.Runtime;
using Android.Views;
using AndroidX.AppCompat.Widget;
using AndroidX.AppCompat.App;
using Google.Android.Material.FloatingActionButton;
using Google.Android.Material.Snackbar;
using Android;
using Android.Widget;
using System.Timers;

namespace budikBluetoothApp
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme.NoActionBar", MainLauncher = true)]
    public class MainActivity : AppCompatActivity
    {
        Button plusFBTN;
        Button minusFBTN;
        TextView frequencyTV;
        SeekBar frequencySB;
        double frequency;
        TextView clockTextView;
        Timer timer;
        double Frequency
        {
            get { return frequency; }
            set {
                if( value< 87.5 ) { value = 87.5; }
                else if (value > 108) { value = 108; }
                frequencyTV.Text = $"{value.ToString()}MHz";
            }
        }
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);



            AndroidX.AppCompat.Widget.Toolbar toolbar = FindViewById<AndroidX.AppCompat.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);
            frequencySB = FindViewById<SeekBar>(Resource.Id.seekBar1);
            frequencyTV = FindViewById<TextView>(Resource.Id.textView1);
            frequencySB.ProgressChanged += frequencyBarChanged;
            plusFBTN = FindViewById<Button>(Resource.Id.button2);
            plusFBTN.Click += (s, e) => { frequencySB.Progress += 1; };
            minusFBTN = FindViewById<Button>(Resource.Id.button1);
            minusFBTN.Click += (s, e) => { frequencySB.Progress -= 1; };
            frequencySB.Progress = 100;
            clockTextView = FindViewById<TextView>(Resource.Id.clockTextView);

            Timer_Elapsed(null,null);
            timer = new Timer();
            timer.Interval = 1000; 
            timer.Elapsed += Timer_Elapsed;
            timer.Start();
        }

        public override bool OnCreateOptionsMenu(IMenu menu)
        {
            MenuInflater.Inflate(Resource.Menu.menu_main, menu);
            return true;
        }

        public override bool OnOptionsItemSelected(IMenuItem item)
        {
            int id = item.ItemId;
            if (id == Resource.Id.action_settings)
            {
                return true;
            }

            return base.OnOptionsItemSelected(item);
        }
        public void frequencyBarChanged(object sender, SeekBar.ProgressChangedEventArgs e) 
        {
             double newValue = 87.5 + (Convert.ToDouble(e.Progress)/10);
             Frequency = newValue;
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
        private void Timer_Elapsed(object sender, ElapsedEventArgs e)
        {
            clockTextView.Text = DateTime.Now.ToString("HH:mm:ss");
        }
        protected override void OnDestroy()
        {
            base.OnDestroy();

            timer.Stop();
            timer.Dispose();
        }
    }
}
