import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 150,
            width: 150,
            child: IconButton(
              icon: const Icon(Icons.image, size: 100,),
              onPressed: () {  },
            ),
          ),
        ),
      ),
    );
  }
}

