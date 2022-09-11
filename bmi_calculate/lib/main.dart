import 'package:bmi_calculate/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.purple,
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 90,
          ),
          canvasColor: Colors.black,
          textTheme: TextTheme(
            headline2: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          )),
      home: HomePage(),
    );
  }
}
