import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:million_de7ka/constant/constant.dart';
import 'package:million_de7ka/create_profile/create_profile.dart';
import 'package:million_de7ka/home/home_layout.dart';
import 'package:million_de7ka/local_network/cache_helper.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1),(){
      name = CacheHelper.getData(key: 'name');
      if(name !=null){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const HomeLayoutScreen()), (route) => false);
      }else{
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> CreateProfile()), (route) => false);
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.jpg',height: 250,width: 250,),
            const SizedBox(height: 15,),
            Text('اهلا بيك فى 100 مليون ضحكة',style: TextStyle(
              color: HexColor('#09edd3'),
              fontSize: 19,
              fontStyle: FontStyle.italic
            ),
            ),
            const SizedBox(height: 15,),
            SpinKitPianoWave(color: HexColor('#09edd3'),)
          ],
        ),
      ),
      
    );
  }
}