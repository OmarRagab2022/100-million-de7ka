import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:million_de7ka/home/home_layout.dart';

class AdviceScreen extends StatelessWidget {

  final String adviceBody;

  const AdviceScreen({Key? key, required this.adviceBody}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: ()=>Get.off(()=>HomeLayoutScreen()),icon: const Icon(Icons.arrow_back_ios,color: Colors.blueAccent,),),
        title: Text('نصائح عن صحة الاسنان',style: TextStyle(
          color: Colors.blueAccent
        ),),
      ),
      body: Column(
      
        children: [
             const SizedBox(height: 50,),
             Image.asset('assets/images/logo.jpg',height: 150, width: 250,),
              const SizedBox(height: 100,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(adviceBody,style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 1.2,
                  ),),
                ],
              ),),
            ),
          ),
        ],
      ),
    );
  }
}