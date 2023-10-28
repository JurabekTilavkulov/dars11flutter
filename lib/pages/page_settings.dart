import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:dars11flutter/pages/quiz/page_quiz.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  final Box _box=Hive.box("boolMusic");
  bool yesNoMusic=false;
  @override
  void dispose() {
    _box.put("MusicOn/Off",yesNoMusic);
    print("check box ichi $yesNoMusic");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Text("Music OFF/ON",style: TextStyle(fontSize: 22),),
          Checkbox(
            activeColor: Colors.blue,
              value:yesNoMusic,
              onChanged:(birNarsaBool){

               setState(() {
                 yesNoMusic=true;
               });
              }
          )
        ],)

      )
    );
  }


}

