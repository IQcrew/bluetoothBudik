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
using FireSharp.Config;
using FireSharp.Interfaces;
using System.Threading;

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
        System.Timers.Timer timer;
        Button alarm1;
        Switch alarm1state;
        Button alarm2;
        Switch alarm2state;
        Button alarm3;
        Switch alarm3state;
        Button alarm4;
        Switch alarm4state;
        Switch RadioState;
        TextView temperature;
        private Button selectedButton = null;
        double Frequency
        {
            get { return frequency; }
            set
            {
                if (value < 87.5) { value = 87.5; }
                else if (value > 108) { value = 108; }
                frequency = value;
                frequencyTV.Text = $"{value.ToString()}MHz";
            }
        }

        UdpClient udpClient;
        const int udpPort = 50302;
        string epsIpAdress = null;

        static IFirebaseClient client;
        static IFirebaseConfig database = new FirebaseConfig()
        {
            AuthSecret = "d0zu2BWaTsJsPMw9XQVSq8qbYQIAV0C5bMmiqYHc",
            BasePath = "https://radio-budik-default-rtdb.europe-west1.firebasedatabase.app"

        };

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
            temperature = FindViewById<TextView>(Resource.Id.tempteratureTextView);

            Timer_Elapsed(null, null);
            timer = new System.Timers.Timer();
            timer.Interval = 1000;
            timer.Elapsed += Timer_Elapsed;
            timer.Start();

            RadioState = FindViewById<Switch>(Resource.Id.radioSwitch);
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
            alarm4.Click += ShowTimePickerDialog;

            try
            {
                client = new FireSharp.FirebaseClient(database);
                epsIpAdress = client.Get("alarmIpArdress").Body.ToString().Replace("\"", "");
                RadioState.Checked = client.Get("radio").Body.ToString().Replace("\"", "") == "true";
                var resStates = client.Get("alarmsState").Body.ToString().Replace("\"", "").Split(',');
                alarm1state.Checked = resStates[0] == "1";
                alarm2state.Checked = resStates[1] == "1";
                alarm3state.Checked = resStates[2] == "1";
                alarm4state.Checked = resStates[3] == "1";
                var resTimes = client.Get("alarmsTime").Body.ToString().Replace("\"", "").Split(',');
                alarm1.Text = minutesToString(int.Parse(resTimes[0]));
                alarm2.Text = minutesToString(int.Parse(resTimes[1]));
                alarm3.Text = minutesToString(int.Parse(resTimes[2]));
                alarm4.Text = minutesToString(int.Parse(resTimes[3]));
                temperature.Text = client.Get("temperature").Body.ToString().Replace("\"", "")+ "°C";
                string resFrequency = client.Get("frequency").Body.ToString().Replace("\"", "").Replace(".", ",");
                Frequency = double.Parse(resFrequency);
                frequencySB.Progress = Convert.ToInt32((Frequency - 87.5)*10);
                Thread temperatureThread = new Thread(new ThreadStart(updateTemperature));
                Thread databaseUpdateThread = new Thread(new ThreadStart(updateDatabase));
                Thread updateEspThread = new Thread(new ThreadStart(updateToEsp));

                temperatureThread.Start();
                databaseUpdateThread.Start();
                updateEspThread.Start();
            }
            catch { }



        }

        public void frequencyBarChanged(object sender, SeekBar.ProgressChangedEventArgs e)
        {
            double newValue = 87.5 + (Convert.ToDouble(e.Progress) / 10);
            Frequency = newValue;
        }
        void updateTemperature()
        {
            while(true)
            {
                Thread.Sleep(60000);

                temperature.Text = client.Get("temperature").Body.ToString().Replace("\"", "") + "°C";
            }
        }
        string tf(bool state)
        {
            return state ? "1" : "0";
        }
        int strToMinutes(string timeInput)
        {
            string[] temp = timeInput.Split(':');
            return (int.Parse(temp[0])*60)+ int.Parse(temp[1]);
        }
        void updateDatabase()
        {
            while(true)
            {
                Thread.Sleep(1000);
                client.Set("radio", RadioState.Checked);
                client.Set("alarmsState", $"{tf(alarm1state.Checked)},{tf(alarm2state.Checked)},{tf(alarm3state.Checked)},{tf(alarm4state.Checked)}");
                client.Set("alarmsTime", $"{strToMinutes(alarm1.Text)},{strToMinutes(alarm2.Text)},{strToMinutes(alarm3.Text)},{strToMinutes(alarm4.Text)}");
                client.Set("frequency", Frequency);
                
            }
        }

        void updateToEsp()
        {
            while(true)
            {
                string message = $"{tf(RadioState.Checked)},{Frequency.ToString().Replace(",",".")},{tf(alarm1state.Checked)},{tf(alarm2state.Checked)},{tf(alarm3state.Checked)},{tf(alarm4state.Checked)}," +
                    $"{strToMinutes(alarm1.Text)},{strToMinutes(alarm2.Text)},{strToMinutes(alarm3.Text)},{strToMinutes(alarm4.Text)},";
                SendMessage(message);
                Thread.Sleep(200);
            }
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
        private string minutesToString(int minutes)
        {
            return $"{Math.Floor(minutes/60f).ToString("00")}:{(minutes%60).ToString("00")}";
        }
      
        private void SendMessage(string message)
        {
            if (epsIpAdress == null)
                return;
            try
            {
                byte[] data = Encoding.ASCII.GetBytes(message);


                udpClient.Send(data, data.Length, epsIpAdress, udpPort);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error sending message: {ex.Message}");
            }
        }
    }
}
