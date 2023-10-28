import 'package:dars11flutter/pages/page1.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../image_string.dart';

class Page0 extends StatefulWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  State<Page0> createState() => _Page0State();
}

class _Page0State extends State<Page0> {

  ImageString imageString=ImageString();
  TextEditingController tcontroller=TextEditingController();
  final Box _box=Hive.box("name");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(child: Image.asset(imageString.firstFull_fon),),
        Center(child: Text("First Enter your data:",style: TextStyle(fontSize: 25,color: Colors.white)),)
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            showDialog(context: context, builder: (context)=>AlertDialog(
              title: Text("Add your information",style: TextStyle(fontSize: 20,color: Colors.greenAccent)),
              content: Text("Your name",style: TextStyle(fontSize: 20,color: Colors.amber)),
              actions: [
                TextField(
                  controller: tcontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your name "
                  ),),
                TextButton(onPressed: (){
                  tcontroller.text.isNotEmpty
                      ? Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()))
                      :null;
                  _box.put("ism", tcontroller.text);
                }, child: Text("continiu"))

              ],
            ))
            ;
          });

        },
        child: Icon(Icons.accessibility),
      ),
    );
  }
}
