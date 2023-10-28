
import 'package:dars11flutter/buttons/custom_button.dart';
import 'package:dars11flutter/image_string.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
   Page1({Key? key}) : super(key: key);
  ImageString imageString=ImageString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(child: Stack(children:<Widget> [
        Positioned(child: Container(),),
       Positioned(child: Image.asset(imageString.qUIZ_half_fon)),
        Positioned(
          top: 280,
            left: 40,
            child: CustomButton(text: "Quiz",rout:"/quiz",)),
        Positioned(
          top: 390,
            left: 40,
            child: CustomButton(text: "Settings",rout:'/settings',)),
        Positioned(
          top: 500,
            left: 40,
            child: CustomButton(text: "History",rout:'/history',)),
        Positioned(
          top: 610,
            left: 40,
            child: CustomButton(text: "About",rout:'/about',)),


        // ElevatedButton(onPressed: (){}, child: Text("bcvdhd"))

      ],),)
    );
   }
}
