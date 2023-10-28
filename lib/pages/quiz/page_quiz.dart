import 'package:audioplayers/audioplayers.dart';
import 'package:dars11flutter/buttons/custom_button2.dart';
import 'package:dars11flutter/image_string.dart';
import 'package:dars11flutter/list_infor.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final Box _box=Hive.box("boolMusic");


  final player=AudioPlayer();
  ImageString imageString=ImageString();
  ListInfor listInfor=ListInfor();

  @override     // bu pageda  boshlanishi bilan musica chalish kk
  void initState() {
    bool musYes=_box.get("MusicOn/Off");
    print(musYes);
    _box.get("MusicOn/Off")?player.play(AssetSource('audio/sar.mp3')):null;

    super.initState();
  }
  @override   // bu pagedan chiqib ketganda musica uchsin
  void dispose() {
   player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Container(child: Stack(children:<Widget> [
          Positioned(child: Container(),),
          Positioned(child: Image.asset(imageString.qUIZ_half_fon)),
          Positioned(
              top: 280,
              left: 40,
              child: CustomButton2(textOlish: "C++",imageOlish: imageString.iconCpp,savolBaza:listInfor.cppQuestions,orqaFon: imageString.cpp_half)), // C++
          Positioned(
              top: 440,
              left: 40,
              child: CustomButton2(textOlish: "Java",imageOlish: imageString.iconJa,savolBaza:listInfor.javaQuestions,orqaFon: imageString.ja_half)),  // Java
          Positioned(
              top: 600,
              left: 40,
              child: CustomButton2(textOlish: "Python",imageOlish: imageString.iconPy,savolBaza:listInfor.pythonQuestions,orqaFon: imageString.py_half)),   //Python

          // ElevatedButton(onPressed: (){}, child: Text("bcvdhd"))

        ],),)
    );

  }
}
