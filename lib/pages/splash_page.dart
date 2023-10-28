import 'package:dars11flutter/image_string.dart';
import 'package:dars11flutter/pages/page0.dart';
import 'package:dars11flutter/pages/page1.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  ImageString imageString=ImageString();

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 6),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Page0()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(imageString.firstFull_fon),
          Center(
            child:  LoadingAnimationWidget.staggeredDotsWave(
            color: Colors.white,
             size: 200,)
          )
        ],
      ),

    );
  }
}
