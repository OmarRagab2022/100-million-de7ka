import 'dart:async';
import 'dart:isolate';


import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:cron/cron.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:get/get.dart';
import 'package:million_de7ka/constant/constant.dart';
import 'package:million_de7ka/local_network/cache_helper.dart';
import 'package:million_de7ka/notfication/notifcation.dart';
import 'package:million_de7ka/splash_screen/splash.dart';

import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;



 void printHello() {
  print('success');
    NotifcationApi().showNotifcation();

    
}
void main() async{
  final int helloAlarmID = 0;
  WidgetsFlutterBinding.ensureInitialized();
  NotifcationApi().init();
  await AndroidAlarmManager.initialize();
  tz.initializeTimeZones();

  
 final cron = Cron();
cron.schedule(Schedule.parse('*/15 * * * * *'), () {
  print('work'); 
DateTime now = DateTime.now();
print(now.hour);  
int? eH= CacheHelper.getData(key: 'eH');
int? eM= CacheHelper.getData(key: 'eM');
int? mH= CacheHelper.getData(key: 'mH');
int? mM= CacheHelper.getData(key: 'mM');
TimeOfDay checkM = TimeOfDay(hour: mH!, minute: mM!);
TimeOfDay checkE = TimeOfDay(hour: eH!, minute: eM!);
if(eH !=null){
 if(now.hour > 12){
   if(checkM.hour == now.hour-12 && checkM.minute ==now.minute||checkE.hour == now.hour-12 && checkE.minute ==now.minute){
     NotifcationApi().showAlarmNotifcationE();
   }else{
     print('night');
   }
 }else{
  if(checkM.hour == now.hour && checkM.minute ==now.minute||checkE.hour == now.hour && checkE.minute ==now.minute){
     NotifcationApi().showAlarmNotifcationE();
   }else{
     print('morong');
   }
 }
}else{
  print('null');
}
});
  String timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
  
  tz.setLocalLocation(tz.getLocation(timeZoneName)); 
  await AndroidAlarmManager.periodic( Duration(minutes :1), helloAlarmID, printHello,allowWhileIdle: true,wakeup: true,rescheduleOnReboot: true,exact: true);
await CacheHelper.init();
name = CacheHelper.getData(key: 'name');
image = CacheHelper.getData(key: 'image');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:const  SplashScreen(),
    );
  }
}

