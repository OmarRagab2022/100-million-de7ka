import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:million_de7ka/alarm_time/alarm_time.dart';
import 'package:million_de7ka/constant/constant.dart';
import 'package:million_de7ka/videos/video_layout.dart';


class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({ Key? key }) : super(key: key);

  @override
  _HomeLayoutScreenState createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Padding(
          padding: const EdgeInsets.all(8.0),
          
          child: CircleAvatar(radius: 30, backgroundImage:  AssetImage('assets/images/logo.jpg') ,),
          

        ),
        title: Text('  مرحبا بك يا ${name}',style:TextStyle(
              color: HexColor('#09edd3'),
              fontSize: 19,
              fontStyle: FontStyle.italic
            )),
            centerTitle: true,
      ),
      body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(29.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const AlarmTimeScreen()));
                    },
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          
                          image:NetworkImage(clockImage)
                        )
                      ),
                      child: Container(
                       height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.white,
                            HexColor('#34dbeb').withOpacity(.1)
                          ]
                        )
                      ),
                      child: Center(child: Text('اختر موعد غسيل الاسنان',style:TextStyle(
                        color: HexColor('#0d2966'),
                        fontStyle: FontStyle.italic,
                        fontSize: 18
                      ) ,),),
                      ),
                    ),
                  ),const SizedBox(height: 10,),
                   InkWell(
                     onTap: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const VideoLayOut()), (route) => false);
                     },
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: NetworkImage(dentistImage),
                          fit: BoxFit.cover
                        ),
                      ),
                      child: Container(
                       height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.white,
                            HexColor('#e32733').withOpacity(.1)
                          ]
                        )
                      ),
                      child: Center(child: Text('مقاطع عن صحة الاسنان',style:TextStyle(
                        color: HexColor('#0d2966'),
                        fontStyle: FontStyle.italic,
                        fontSize: 18
                      ) ,),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
      
    );
  }
}