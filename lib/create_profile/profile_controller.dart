import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import 'package:million_de7ka/local_network/cache_helper.dart';

class ProfileController extends GetxController{
  
  final ImagePicker picker = ImagePicker();
  bool loading =false;
  changeLoading(){
    loading !=loading;
    update();
  }

  XFile? imageFile;
  pickImageProfile(src){
    picker.pickImage(source: src).then((value){
      imageFile = value;
      update();
    });

  }
 addProfile(String name){
   changeLoading();
   
   if(imageFile != null){
     CacheHelper.putData(key: 'name', value: name);
     CacheHelper.putData(key: 'image', value: imageFile!.path);
     changeLoading();
    
   }else{
     String image = 'assets/images/logo.jpg';

     CacheHelper.putData(key: 'name', value: name);
     CacheHelper.putData(key: 'image', value: image);
     changeLoading();
     update();
   }
 }  
}