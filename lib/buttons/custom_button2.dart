import 'package:dars11flutter/pages/quiz/quiz2.dart';
import 'package:flutter/material.dart';
import '../models/test_madel.dart';

class CustomButton2 extends StatefulWidget {
  const CustomButton2({
    required this.imageOlish,
    required this.textOlish,
    required this.savolBaza,
    required this.orqaFon
  });
 final String imageOlish;
 final String textOlish;
 final List<TestModel> savolBaza;
 final String orqaFon;
  @override
  State<CustomButton2> createState() => _CustomButton2State(imageOlish,textOlish,savolBaza,orqaFon);
}

class _CustomButton2State extends State<CustomButton2> {
  String _imageOlish;
  String _textOlish;
  List<TestModel> _savolBaza;
  String _orqaFon;


  _CustomButton2State(this._imageOlish, this._textOlish, this._savolBaza,
      this._orqaFon);



  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: (){
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Quiz2(orqafon: _orqaFon,savollar: _savolBaza)));
          });
        },
        child:  Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10
                )]
            ),

            height: 130,
            width: 260,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(_imageOlish,fit: BoxFit.cover,),
                Text(_textOlish,style: TextStyle(fontSize: 35, color: Color(0xFF5B1CAE)),)
              ],
            )
        ),
      ),
    );
  }
}
