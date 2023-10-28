import 'package:dars11flutter/pages/page1.dart';
import 'package:dars11flutter/pages/page_aboute.dart';
import 'package:dars11flutter/pages/page_history.dart';
import 'package:dars11flutter/pages/quiz/page_quiz.dart';
import 'package:dars11flutter/pages/page_settings.dart';
import 'package:dars11flutter/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox("testJadval");
  await Hive.openBox("boolMusic");
  await Hive.openBox("name");
  await Hive.openBox("natijasi");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/quiz':(context)=>Quiz(),
        '/about':(context)=>Aboute(),
        '/history':(context)=>Historu(),
        '/settings':(context)=>Settings(),

      },
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return SplashPage(

    );
  }
}
