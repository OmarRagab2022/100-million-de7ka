import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:cron/cron.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:million_de7ka/constant/constant.dart';
import 'package:million_de7ka/home/home_layout.dart';
import 'package:million_de7ka/local_network/cache_helper.dart';
import 'package:million_de7ka/notfication/notifcation.dart';


class TimeController extends GetxController{
  bool isloading = false;
  changeLoadingState(){
    isloading !=isloading;
    update();
  }
bool checkValidate(int mornigH,int mornigM,int eveningH,int eveningM){
   if(mornigH <= 12 && mornigM <=59&& eveningH<= 12 &&eveningM<=59){
     return true;
   }
   return false;
 }
addNotficationAlarm(int mH,int mM,int eH,int eM)async{ 
int? checkTime = CacheHelper.getData(key: 'eH');
if(checkTime !=null){
CacheHelper.removeData(key: 'eH');
CacheHelper.removeData(key: 'eM');
CacheHelper.removeData(key: 'mH');
CacheHelper.removeData(key: 'mM');
CacheHelper.putData(key: 'eH', value: eH);
CacheHelper.putData(key: 'eM', value: eM);
CacheHelper.putData(key: 'mH', value: mH);
CacheHelper.putData(key: 'mM', value: mM);

Get.snackbar('تم اضافة موعد غسيل الاسنان', 'تم اضافة موعد غسيل الاسنان');
Get.off(()=>HomeLayoutScreen());
}else{
CacheHelper.putData(key: 'eH', value: eH);
CacheHelper.putData(key: 'eM', value: eM);
CacheHelper.putData(key: 'mH', value: mH);
CacheHelper.putData(key: 'mM', value: mM);

Get.snackbar('تم اضافة موعد غسيل الاسنان', 'تم اضافة موعد غسيل الاسنان');
Get.off(()=>HomeLayoutScreen());
}
}

}

showNotificatioAlarm() {
 
}