import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({required this.text,required this.rout});
  final String text;
  final String rout;

  @override
  State<CustomButton> createState() => _CustomButtonState(text,rout);
}

class _CustomButtonState extends State<CustomButton> {
  _CustomButtonState(this.text,this.rout);
  String text;
  String rout;
  bool press=false;


  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: (){
          setState(() {
            Navigator.of(context).pushNamed(rout);
            press=true;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border:press? Border.all(color: Colors.red):null,
              boxShadow: [BoxShadow(
                  color: Colors.black54,
                  blurRadius: 10
              )]
          ),

          height: 90,
          width: 280,
          child: Center(
           child: Text(text,style: TextStyle(fontSize: 35, color: Color(0xFF5B1CAE)),)
          ),
        ) ,
      ),

    );
  }


}
