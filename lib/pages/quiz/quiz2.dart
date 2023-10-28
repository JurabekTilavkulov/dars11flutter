import 'dart:async';

import 'package:dars11flutter/buttons/custom_button_quistion.dart';
import 'package:dars11flutter/pages/quiz/quiz_last.dart';
import 'package:flutter/material.dart';

import '../../models/test_madel.dart';

class Quiz2 extends StatefulWidget {
  const Quiz2({required this.orqafon, required this.savollar});

  final String orqafon;
  final List<TestModel> savollar;


  @override
  State<Quiz2> createState() => _Quiz2State(orqafon,savollar);
}

class _Quiz2State extends State<Quiz2> {
  _Quiz2State(this.orqafon, this.savollar);
  String orqafon;
  List<TestModel> savollar;
  int _i=0;
  int correctCount=0;
  String chosenAnsver='';
  late Timer _timer;
  int _start=30;
  int timechik=0;
  void starTimer(){
    const oneSecond=Duration(seconds: 1);
    _timer=Timer.periodic(
        oneSecond,
            (timer) {
          if(_start==0){
            timer.cancel();
          }
          else{
            setState(() {
              _start--;
              timechik++;
            });
          }
            });
  }
  @override
  void initState() {
    starTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
          children: [
            Positioned(child: Container(   // orqa yarim foni
              color: Colors.white,
              child: Image.asset(orqafon),
            )),
            Positioned(
              left: 175,
                top:200,
                child: Text("End time: $_start seconds",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),)),// orqa yarim foni
            Center(

              child: Padding(
                padding: const EdgeInsets.only(top: 210),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Container(             // Savol
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                      ),
                      height: 130,
                      width: 260,
                      child: Center(
                        child: Text(savollar[_i].question,style: TextStyle(color: Color(0xFFA76AE4),fontSize: 15),),
                      ),
                    ),  // Savol

                    GestureDetector(
                      onTap: (){
                        setState(() {
                          chosenAnsver=savollar[_i].answerA;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        height: 50,
                        width: 260,
                        child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("A",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                flex: 5,
                                child: Text(savollar[_i].answerA),)
                            ]
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border:chosenAnsver==savollar[_i].answerA? Border.all(color: Colors.red,width: 3):null,
                            boxShadow: [BoxShadow(
                                color: Colors.black54,
                                blurRadius: 10
                            )]
                        ),),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          chosenAnsver=savollar[_i].answerB;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        height: 50,
                        width: 260,
                        child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("B",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                flex: 5,
                                child: Text(savollar[_i].answerB),)
                            ]
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border:chosenAnsver==savollar[_i].answerB? Border.all(color: Colors.red,width: 3):null,
                            boxShadow: [BoxShadow(
                                color: Colors.black54,
                                blurRadius: 10
                            )]
                        ),),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          chosenAnsver=savollar[_i].answerC;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        height: 50,
                        width: 260,
                        child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("C",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                flex: 5,
                                child: Text(savollar[_i].answerC),)
                            ]
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border:chosenAnsver==savollar[_i].answerC? Border.all(color: Colors.red,width: 3):null,
                            boxShadow: [BoxShadow(
                                color: Colors.black54,
                                blurRadius: 10
                            )]
                        ),),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          chosenAnsver=savollar[_i].answerD;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        height: 50,
                        width: 260,
                        child: Row(

                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text("D",style: TextStyle(fontSize: 15),)),
                              Expanded(
                                flex: 5,
                                child: Text(savollar[_i].answerD),)
                            ]
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border:chosenAnsver==savollar[_i].answerD? Border.all(color: Colors.red,width: 3):null,
                            boxShadow: [BoxShadow(
                                color: Colors.black54,
                                blurRadius: 10
                            )]
                        ),),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          if(chosenAnsver==savollar[_i].correctAnswer){
                            correctCount++;
                          }
                          _i++;
                          if(savollar.length==_i){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>QuizLast(correct: correctCount,timchik: timechik,)));
                          }
                        });

                      },
                      child: Container(

                        height: 50,
                        width: 130,
                        child: Center(child: Text("Next",style: TextStyle(fontSize: 25),),),
                        decoration: BoxDecoration(
                            color: Color(0xFFA76AE4),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5
                            )]
                        ),),
                    ),


                  ],
                ),
              ),
            )

            // Container(color: Colors.purpleAccent,),
          ],


        )
    );
  }
}
