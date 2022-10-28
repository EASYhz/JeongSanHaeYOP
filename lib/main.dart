import 'package:flutter/material.dart';
import 'package:frontend_jshy/mainpage.dart';

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
          body: const MainPage()
      ),
    );
  }
}
