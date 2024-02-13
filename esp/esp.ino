#include <WiFi.h>
#include <WiFiUdp.h>
#include <string.h>
#include <LiquidCrystal_I2C.h>
#include <TEA5767N.h>
#include <DS3231.h>
#include <NTPClient.h>
#include <IOXhop_FirebaseESP32.h>  


//radio
TEA5767N radio = TEA5767N();
float frequency = 100;
bool radioOn = true;
unsigned long previousMillis = 0;
const unsigned long interval = 60000; // Interval of one minute in milliseconds

//lcd
LiquidCrystal_I2C lcd(0x27, 16, 4);

//communication
const char *ssid = "IT-IQ-CREW24";
const char *pwd = "hackedBYdudesek"; 
const int udpPort = 50302;
WiFiUDP udp;

//database
#define FIREBASE_Host "https://radio-budik-default-rtdb.europe-west1.firebasedatabase.app"
#define FIREBASE_authorization_key "d0zu2BWaTsJsPMw9XQVSq8qbYQIAV0C5bMmiqYHc"

//alarm - time
DS3231 rtc; 
const char* ntpServer = "pool.ntp.org";
const long  gmtOffset_sec = 0;
const int   daylightOffset_sec = 3600; 
bool  alarmH12Flag, alarmPmFlag;
NTPClient timeClient(udp,"europe.pool.ntp.org", 3600);
bool alarmRinging = false;
int alarmsState[4] = {0, 0, 0, 0}; 
int alarmsTime[4] = {0, 0, 0, 0};   
unsigned long previousRinging = -100000;  
unsigned long previousRing = -100000;  
int buzzerState = LOW;
#define alarmDisablePin 17
#define buzzerPin 19




void setup() {
  Serial.begin(115200); 
  WiFi.begin(ssid, pwd);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  udp.begin(udpPort);
  Wire.begin(); 
  radio.setStereoNoiseCancellingOn();
  syncTimeFromNTP();
  Firebase.begin(FIREBASE_Host, FIREBASE_authorization_key);  
  IPAddress ipAddress = WiFi.localIP();
  String ipAddressString = String(ipAddress[0]) + "." + String(ipAddress[1]) + "." + String(ipAddress[2]) + "." + String(ipAddress[3]);
  Firebase.setString("alarmIpArdress",ipAddressString);
  String str1 = Firebase.getString("alarmsTime");
  String str2 = Firebase.getString("alarmsState");
  sscanf(str1.c_str(), "%d,%d,%d,%d", &alarmsTime[0], &alarmsTime[1], &alarmsTime[2], &alarmsTime[3]);
  sscanf(str2.c_str(), "%d,%d,%d,%d", &alarmsState[0], &alarmsState[1], &alarmsState[2], &alarmsState[3]);
  frequency = Firebase.getFloat("frequency");
  radioOn = Firebase.getBool("radio");
  lcd.init(); 
  lcd.backlight();
  pinMode(buzzerPin, OUTPUT);
  pinMode(alarmDisablePin, INPUT_PULLUP);
}

void loop() {
  communication();
  unsigned long currentMillis = millis();
  if(digitalRead(alarmDisablePin) == LOW){
    alarmRinging = false;
    buzzerState = LOW;
    digitalWrite(buzzerPin, buzzerState);
  }
  if(currentMillis- previousRinging > 60000){
    alarmRinging = false;
    buzzerState = LOW;
    digitalWrite(buzzerPin, buzzerState);
    alarmClocks();
  }
  else{
    if(alarmRinging){
      if(currentMillis-previousRing>250){
        previousRing = currentMillis;
        if(buzzerState == LOW){buzzerState = HIGH;}
        else{buzzerState = LOW;}
        digitalWrite(buzzerPin, buzzerState);
      }
    }
  }
  radioUpdate();
  lcdPrint();
  if (currentMillis - previousMillis >= interval) {
    previousMillis = currentMillis; 
  Firebase.setInt("temperature", rtc.getTemperature());
  }
}

void communication(){
    if (udp.parsePacket()) {
    uint8_t buffer[200] = {0};
    int len = udp.read(buffer, 200);
    if (len > 0) {
      String receivedData = (char*)buffer;

    }
  }
}

void alarmClocks(){
  int currentTime = rtc.getMinute()+(rtc.getHour(alarmH12Flag, alarmPmFlag)*60);
    for (int i = 0; i < 4; i++) {
    if(alarmsState[i] && alarmsTime[i] == currentTime){
      alarmRinging = true;
      previousRinging = millis();
    }
  }
}

void lcdPrint() {
  lcd.clear();

  lcd.setCursor(0, 0);
  lcd.print("Time: ");
  lcd.print(rtc.getHour(alarmH12Flag, alarmPmFlag));
  lcd.print(":");
  lcd.print(rtc.getMinute());
  lcd.print(":");
  lcd.print(rtc.getSecond());

  lcd.setCursor(0, 1);
  lcd.print("Frequency: ");
  lcd.print(radio.readFrequencyInMHz());
  lcd.print(" MHz");

  lcd.setCursor(0, 2);
  lcd.print("Signal Level: ");
  lcd.print(radio.getSignalLevel() * 100 / 15);
  lcd.print("%");


  lcd.setCursor(0, 3);
  lcd.print("T: ");
  lcd.print(rtc.getTemperature());

}

void radioUpdate(){
  if(radioOn){
    radio.turnTheSoundBackOn();
  }
  else{
    radio.mute();
  }
  if (frequency > 87.0 && frequency < 108.0) {
    radio.selectFrequency(frequency);
  }
}

void syncTimeFromNTP() {
  timeClient.update();
  Serial.println("Fetched time from NTP server: " + timeClient.getFormattedTime());
  unsigned long epochTime = timeClient.getEpochTime();
  time_t time = (time_t)epochTime;
  tm* currentTime = localtime(&time);
  rtc.setYear(currentTime->tm_year + 1900);
  rtc.setMonth(currentTime->tm_mon + 1);
  rtc.setDate(currentTime->tm_mday);
  rtc.setDoW(currentTime->tm_wday);
  rtc.setHour(currentTime->tm_hour);
  rtc.setMinute(currentTime->tm_min);
  rtc.setSecond(currentTime->tm_sec);

  Serial.println("DS3231 time set successfully!");
}