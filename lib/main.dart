import 'package:flutter/material.dart';
import 'package:jeongsanhaepyop/mainPage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff7FB77E),
        ),
        body: MainPage()
      ),
    );
  }
}
