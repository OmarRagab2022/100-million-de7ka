import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:million_de7ka/alarm_time/time_controller.dart';
import 'package:million_de7ka/constant/constant.dart';
import 'package:million_de7ka/home/home_layout.dart';


class AlarmTimeScreen extends StatefulWidget {
  const AlarmTimeScreen({ Key? key }) : super(key: key);

  @override
  _AlarmTimeScreenState createState() => _AlarmTimeScreenState();
}

class _AlarmTimeScreenState extends State<AlarmTimeScreen> {
   var fromKeyy = GlobalKey<FormState>();
  var moringHController = TextEditingController();
  var eveningHController = TextEditingController();
   var moringMController = TextEditingController();
  var eveningMController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(icon: Icon(Icons.arrow_back,color: HexColor('#34dbeb'),),onPressed: ()=>Navigator.pop(context),),
          title:Text('اختر موعد غسيل الاسنان',style: TextStyle(
            color: HexColor('#34dbeb'),
            fontSize: 14,
            fontStyle: FontStyle.italic
          ),),
          centerTitle: true,
          
        ),
        body:Form(
          key: fromKeyy,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
             backGround(),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Card(
                 color: Colors.white,
                 shadowColor:Colors.black,
                 elevation: 0.9,
                 clipBehavior: Clip.antiAliasWithSaveLayer,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('وقت الصباح ',style: TextStyle(
                         color:  HexColor('#34dbeb'),
                         fontSize: 20,
                         fontStyle: FontStyle.italic
                       ),),
                       const SizedBox(height: 20,),
                       Row(
                         children:[
                           Expanded(child: Text('الساعة')),
                           Expanded(child: TextFormField(
                             controller: moringHController,
                             keyboardType: TextInputType.number,
                             validator: (String ?value){
                               if(value!.isEmpty){
                                 return'من مفضلك ادخل البيانات';
                               }
                               return null;
                             },
                           )
                           )
                           ,Expanded(child: Text('الدقائق')),
                           Expanded(child: TextFormField(
                             controller: moringMController,
                             keyboardType: TextInputType.number,
                             validator: (String ?value){
                               if(value!.isEmpty){
                                 return'من مفضلك ادخل البيانات';
                               }
                               return null;
                             },
                           )
                           ) 
                           
                         ]
                       ),
                       const SizedBox(height: 10,),
                      const Text('وقت المساء ',style: TextStyle(
                         color: Colors.black,
                         fontSize: 20,
                         fontStyle: FontStyle.italic
                       ),),
                       const SizedBox(height: 40,),
                       Row(
                         children:[
                           Expanded(child: Text('الساعة')),
                           Expanded(child: TextFormField(
                             controller: eveningHController,
                             keyboardType: TextInputType.number,
                             validator: (String ?value){
                               if(value!.isEmpty){
                                 return'من مفضلك ادخل البيانات';
                               }
                               return null;
                             },
                           )
                           )
                           ,Expanded(child: Text('الدقائق')),
                           Expanded(child: TextFormField(
                             controller: eveningMController,
                             keyboardType: TextInputType.number,
                             validator: (String ?value){
                               if(value!.isEmpty){
                                 return'من مفضلك ادخل البيانات';
                               }
                               return null;
                             },
                           )
                           )
                           
                         ]
                       ),
                       const SizedBox(height: 60,),
                       GetBuilder<TimeController>(
                         init: TimeController(),
                         builder:(value)=> InkWell(
                           onTap: (){
                              if(fromKeyy.currentState!.validate()){
                                int eH= int.parse(eveningHController.text.trim());
                                int eM= int.parse(eveningMController.text.trim());
                                int mH= int.parse(moringHController.text.trim());
                                int mM= int.parse(moringMController.text.trim());
                                bool isValid = value.checkValidate(mH, mM, eH, eM);
                                if(isValid){
                                  value.addNotficationAlarm(mH, mM, eH, eM);

                                }else{
                                  Get.snackbar('خطأ فى ادخال البيانات', 'خطأ فى ادخال البيانات');
                                }
                              }  
                           },
                           child: Container(
                             width: double.infinity,
                             height: 40,
                             decoration: BoxDecoration(
                               color: Colors.blue,
                               borderRadius: BorderRadius.circular(24)
                             ),
                             clipBehavior: Clip.antiAliasWithSaveLayer,
                             child: Center(child: value.isloading == false ? const Text('اضف موعد غسيل الاسنان',style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 20
                             ),):const CircularProgressIndicator(color: Colors.white,) ,),
                           ),
                         ),
                       )
                     ],
                     
                   ),
                 ),
               ),
             )    
            ],
          ),
        )
    );
  }
}

Widget backGround()=>Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    
                    image: DecorationImage(
                      image: NetworkImage(clockImage)
                    )
                  ),
                  child: Container(
                   height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.white,
                        HexColor('#34dbeb').withOpacity(.1)
                      ]
                    )
                  ),
                  
                  ),
                );