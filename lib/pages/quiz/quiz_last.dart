import 'package:dars11flutter/image_string.dart';
import 'package:dars11flutter/models/natija.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class QuizLast extends StatelessWidget {

  QuizLast({required this.correct,required this.timchik});
  int correct;
  int timchik;
  ImageString imageString=ImageString();
  final Box _box=Hive.box("name");
  late String name;
  final Box _box1=Hive.box("natijasi");
//  List<String> namesList=[];


  @override
  Widget build(BuildContext context){
    name=_box.get("ism");

   _box1.put(name,"$correct/5    time:$timchik sec");  // bu ism va natijani hive ga yozish
  //  _box1.put(name,Natija(timchik.toString(), correct.toString()));  // bu ism va natijani hive ga yozish
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Container(
            color: Color(0xFFF4F2F6),
           width: 380,
              child: Image.asset(imageString.qUIZ_Orqa,fit: BoxFit.cover,)
          )),
          Positioned(
              top: 460,
              left: 30,
              child: Container(
                  child: Image.asset(imageString.qUIZ_Odam)
              )),
          Center(child: Text("Completed \n  $correct/5   ",style: TextStyle(fontSize: 25,color: Colors.white),),)
        ],
      ),
    );
  }
}
