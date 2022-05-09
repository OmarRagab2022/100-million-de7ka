import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:image_picker/image_picker.dart';
import 'package:million_de7ka/constant/constant.dart';
import 'package:million_de7ka/create_profile/profile_controller.dart';
import 'package:million_de7ka/home/home_layout.dart';
import 'package:million_de7ka/local_network/cache_helper.dart';

class CreateProfile extends StatelessWidget {
   CreateProfile({ Key? key }) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (value){
        return Scaffold(
          body: Center(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                       alignment: AlignmentDirectional.bottomEnd,
                       children: [
                         CircleAvatar(
                           radius: 60,
                           backgroundImage: value.imageFile == null? AssetImage('assets/images/logo.jpg'): FileImage(File(value.imageFile!.path)) as ImageProvider,
                         ),
                         
                       ],
                     ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    validator: (String ?value){
                      if(value!.isEmpty){
                        return 'من فضلك ادخل اسم المستخدم';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'اسم المستخدم',
                      prefixIcon:const Icon(Icons.person,color: Colors.blueAccent,),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.blueAccent)
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.blueAccent)
                      )
                    ),
                  ),
                  const SizedBox(height: 10,),
                  InkWell(
                    onTap: (){
                      if(formKey.currentState!.validate()){
                        
                        value.addProfile(nameController.text.trim());
                        Get.snackbar('مرحبا ', 'اهلا بك فى 100 مليون ضحكة');
                        name = CacheHelper.getData(key: 'name');
                        image = CacheHelper.getData(key: 'image');
                        Get.offAll(()=>const HomeLayoutScreen());
                      }
                    },
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blueAccent
                      ),
                      child:value.loading == false ? const Center(child: Text('ادخل اسم المستخدم',style: TextStyle(color: Colors.white),),): const Center(child: SpinKitFadingCircle(color: Colors.white,),) ,
                    ),
                  )    
                ],
              ),
            ),
          ),
        );
      },
      
    );
  }
}