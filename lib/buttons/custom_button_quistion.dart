import 'package:flutter/material.dart';

class CustomButtonQuistion extends StatefulWidget {
  const CustomButtonQuistion({required this.boshHarfi,required this.javob});
  final  String boshHarfi;
  final  String javob;

  @override
  State<CustomButtonQuistion> createState() => _CustomButtonQuistionState(boshHarfi,javob);
}

class _CustomButtonQuistionState extends State<CustomButtonQuistion> {

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  String _boshHarfi;
  String _javob;


  _CustomButtonQuistionState(this._boshHarfi, this._javob);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: (){
          setState(() {

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
                  child: Text(_boshHarfi,style: TextStyle(fontSize: 15),)),
              Expanded(
                  flex: 5,
                  child: Text(_javob),)
            ]
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border:  Border.all(color: Colors.red),
              boxShadow: [BoxShadow(
                  color: Colors.black54,
                  blurRadius: 10
              )]
          ),),
      ),
    );
  }
}
