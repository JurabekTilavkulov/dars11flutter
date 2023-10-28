import 'package:dars11flutter/models/natija.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Historu extends StatefulWidget {
  const Historu({Key? key}) : super(key: key);

  @override
  State<Historu> createState() => _HistoruState();
}

class _HistoruState extends State<Historu> {
  final Box _box1=Hive.box("natijasi"); // oqib olish uchun
  List<String> list=[];

  @override
  void initState() {
    _box1.toMap().forEach((key, value) { // bu yerda key=name
      list.add(key);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      body: Container(
        child: ListView.separated(
            itemBuilder: (context, index){
              return builtItem(index);
            }, separatorBuilder: (context, index){
              return Divider(height: 30,thickness: 3,color: Colors.red);
        }, itemCount: list.length),
      )
    );
  }

  Widget builtItem(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(child: Text(" ${index+1}")),
        Expanded(child: Text(list[index].toString())),
        Expanded(child: Text("${(_box1.get(list[index]))}")),
      ],
    );
  }
  
  
}
