import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:million_de7ka/advice/advice_screen.dart';
import 'package:million_de7ka/constant/constant.dart';
import 'package:million_de7ka/home/home_layout.dart';

import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;


class NotifcationApi{
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  NotifcationApi(){
    init();
  }
  init(){
   flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
   var andriod = new AndroidInitializationSettings('@mipmap/ic_launcher');
   var ios = IOSInitializationSettings();
   var initailze = new InitializationSettings(android: andriod,iOS: ios);
   flutterLocalNotificationsPlugin.initialize(initailze,onSelectNotification: (payload) => openNotfi(payload),);
  }

  openNotfi(String? payload,) {
    if(payload =='موعد الان غسيل الاسنان'){
    Get.to(()=>HomeLayoutScreen());

    }else{
      Get.to(()=>AdviceScreen(adviceBody: payload.toString()));
    }
  
  }

  void showNotifcation(){
    Random random = new Random();
    int randomNumber = random.nextInt(10);
    String adviceOne = advices[randomNumber];
    String adviceBodyOne= bodyAdvices[randomNumber];
    var android =  AndroidNotificationDetails("channelId", "channelName",channelDescription: 'channelDescription',priority: Priority.max,
    icon: '@mipmap/ic_launcher',
    importance: Importance.max,
    playSound: false,
    enableVibration: true
    );
    var ios = IOSNotificationDetails();
    var platfrom =new NotificationDetails(android: android,iOS: ios);
    flutterLocalNotificationsPlugin.show(randomNumber, '$adviceOne', '$adviceBodyOne',platfrom,payload: '$adviceBodyOne');
    
  }


void showAlarmNotifcationE(){
  String title = 'موعد الان غسيل الاسنان';
  String body ='موعد الان غسيل الاسنان';
  String sound = 'ring.wav';
  var android =  AndroidNotificationDetails("channelId", "channelName",channelDescription: 'channelDescription',priority: Priority.max,
    icon: '@mipmap/ic_launcher',
    importance: Importance.max,
    sound: RawResourceAndroidNotificationSound(sound.split('.').first),
    playSound: true,
    enableVibration: true,
    
    );
    var ios = IOSNotificationDetails();
    var platfrom =new NotificationDetails(android: android,iOS: ios);
   flutterLocalNotificationsPlugin.show(0, '$title', '$body',platfrom,payload: '$body');
}
  
static tz.TZDateTime schudleTime(Time time){
  final now = tz.TZDateTime.now(tz.local);
  final schudledate = tz.TZDateTime(tz.local,now.year,now.month,now.day,time.hour,time.minute,time.second);
  return schudledate.isBefore(now)?schudledate.add(Duration(days: 1)):schudledate;
}
void alarmMoring(int hour ,int minutes){
   String title = 'موعد الان غسيل الاسنان';
  String body ='موعد الان غسيل الاسنان';
  String sound = 'ring.wav';
    var android =  AndroidNotificationDetails("channelId", "channelName",channelDescription: 'channelDescription',priority: Priority.max,
    icon: '@mipmap/ic_launcher',
    importance: Importance.max,
    sound: RawResourceAndroidNotificationSound('ring'),
    playSound: true,
    enableVibration: true
    );
    var ios = IOSNotificationDetails();
    var platfrom =new NotificationDetails(android: android,iOS: ios);
    flutterLocalNotificationsPlugin.zonedSchedule(
      9, 
      '$title'
      , '$body'
      , schudleTime(Time(hour,minutes)), 
      platfrom,
       uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime
       , androidAllowWhileIdle: true,
       matchDateTimeComponents: DateTimeComponents.time,
       payload: '$title'
       );
}

void alarmEvening(int hour ,int minutes){
   String title = 'موعد الان غسيل الاسنان';
  String body ='موعد الان غسيل الاسنان';
  String sound = 'ring.wav';
    var android =  AndroidNotificationDetails("channelId", "channelName",channelDescription: 'channelDescription',priority: Priority.max,
    icon: '@mipmap/ic_launcher',
    importance: Importance.max,
    sound: RawResourceAndroidNotificationSound('ring'),
    playSound: true,
    enableVibration: true
    );
    var ios = IOSNotificationDetails();
    var platfrom =new NotificationDetails(android: android,iOS: ios);
    flutterLocalNotificationsPlugin.zonedSchedule(
      9, 
      '$title'
      , '$body'
      , schudleTime(Time(hour+12,minutes)), 
      platfrom,
       uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime
       , androidAllowWhileIdle: true,
       matchDateTimeComponents: DateTimeComponents.time,
       payload: '$title'
       );
}

}

