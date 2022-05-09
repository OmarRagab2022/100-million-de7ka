import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:million_de7ka/constant/constant.dart';
import 'package:million_de7ka/home/home_layout.dart';
import 'package:million_de7ka/videos/video_item.dart';



class VideoLayOut extends StatefulWidget {
  const VideoLayOut({ Key? key }) : super(key: key);

  @override
  _VideoLayOutState createState() => _VideoLayOutState();
}

class _VideoLayOutState extends State<VideoLayOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>Get.off(()=>HomeLayoutScreen()), icon:const  Icon(Icons.arrow_back,color: Colors.blueAccent,)),
        backgroundColor: Colors.white,
        title: Text('فيديوهات عن صحة الاسنان ',style: TextStyle(
          color: Colors.blueAccent,
          fontStyle: FontStyle.italic,

        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemBuilder: (context,index)=>videoListItem(index), 
          separatorBuilder: (context,index)=>const SizedBox(height: 20,), 
          itemCount: videosLink.length),
      ),
      
    );
  }
}

Widget videoListItem(int i){
  return InkWell(
    onTap: (){
      Get.to(()=>VideoApp(url:videosLink[i]));
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(videostitle[i],style: const TextStyle(
          fontStyle: FontStyle.italic
        ),),
        const SizedBox(height: 10,),
        Container(
          height: 250,
          width: double.infinity,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              image: NetworkImage(imageVideo[i]),
              fit: BoxFit.cover
            )
          ),
        )  
      ],
    ),
  );
}