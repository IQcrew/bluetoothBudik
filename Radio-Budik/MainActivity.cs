using System;
using Android.App;
using Android.OS;
using Android.Runtime;
using Android.Views;
using AndroidX.AppCompat.Widget;
using AndroidX.AppCompat.App;
using Google.Android.Material.FloatingActionButton;
using Google.Android.Material.Snackbar;
using Android.Widget;
using System.Timers;
using System.Net.Sockets;
using System.Text;
using System.Net.NetworkInformation;
using System.Net;

namespace Radio_Budik
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
        Button alarm1;
        Switch alarm1state;
        Button alarm2;
        Switch alarm2state;
        Button alarm3;
        Switch alarm3state;
        Button alarm4;
        Switch alarm4state;
        private Button selectedButton = null;
        double Frequency
        {
            get { return frequency; }
            set
            {
                if (value < 87.5) { value = 87.5; }
                else if (value > 108) { value = 108; }
                frequencyTV.Text = $"{value.ToString()}MHz";
            }
        }

        UdpClient udpClient;
        const int udpPort = 50302;
        string epsIpAdress = null;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);

            AndroidX.AppCompat.Widget.Toolbar toolbar = FindViewById<AndroidX.AppCompat.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);

            udpClient = new UdpClient(udpPort);


            frequencySB = FindViewById<SeekBar>(Resource.Id.seekBar1);
            frequencyTV = FindViewById<TextView>(Resource.Id.textView1);
            frequencySB.ProgressChanged += frequencyBarChanged;
            plusFBTN = FindViewById<Button>(Resource.Id.button2);
            plusFBTN.Click += (s, e) => { frequencySB.Progress += 1; };
            minusFBTN = FindViewById<Button>(Resource.Id.button1);
            minusFBTN.Click += (s, e) => { frequencySB.Progress -= 1; };
            frequencySB.Progress = 100;
            clockTextView = FindViewById<TextView>(Resource.Id.clockTextView);

            Timer_Elapsed(null, null);
            timer = new Timer();
            timer.Interval = 1000;
            timer.Elapsed += Timer_Elapsed;
            timer.Start();


            alarm1 = FindViewById<Button>(Resource.Id.clockButton1);
            alarm2 = FindViewById<Button>(Resource.Id.clockButton2);
            alarm3 = FindViewById<Button>(Resource.Id.clockButton3);
            alarm4 = FindViewById<Button>(Resource.Id.clockButton4);
            alarm1state = FindViewById<Switch>(Resource.Id.clockSwitch1);
            alarm2state = FindViewById<Switch>(Resource.Id.clockSwitch2);
            alarm3state = FindViewById<Switch>(Resource.Id.clockSwitch3);
            alarm4state = FindViewById<Switch>(Resource.Id.clockSwitch4);
            alarm1.Click += ShowTimePickerDialog;
            alarm2.Click += ShowTimePickerDialog;
            alarm3.Click += ShowTimePickerDialog;
            alarm4.Click += test;


        }

        public void frequencyBarChanged(object sender, SeekBar.ProgressChangedEventArgs e)
        {
            double newValue = 87.5 + (Convert.ToDouble(e.Progress) / 10);
            Frequency = newValue;
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

            udpClient.Close();
        }

        private void ShowTimePickerDialog(object sender, System.EventArgs e)
        {
            TimePickerDialog timePickerDialog = new TimePickerDialog(this, OnTimeSetListener, DateTime.Now.Hour, DateTime.Now.Minute, false);
            timePickerDialog.Show();
            selectedButton = sender as Button;
        }

        private void OnTimeSetListener(object sender, TimePickerDialog.TimeSetEventArgs e)
        {
            if (selectedButton != null)
            {
                int hour = e.HourOfDay;
                int minute = e.Minute;

                string selectedTime = $"{hour:D2}:{minute:D2}";
                selectedButton.Text = selectedTime;
                selectedButton = null;
            }
        }
        private void test(object sender, System.EventArgs e)
        {
            SendMessage("wow");
        }
      
        private void SendMessage(string message)
        {
            try
            {
                byte[] data = Encoding.ASCII.GetBytes(message);


                udpClient.Send(data, data.Length, "192.168.0.176", udpPort);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error sending message: {ex.Message}");
            }
        }
    }
}
