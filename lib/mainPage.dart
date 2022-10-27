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
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              SizedBox(
                  height: 100,
                  width: 100,
                  child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Color(0xff7FB77E),
                    child: Icon(
                      Icons.image,
                      size: 70,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  )
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Column(
                    children: <Widget> [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text("정산할 금액이 들어간",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                      ),
                      Text("이미지를 선택해 주세요.",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ]
                )
              )
            ]
          ),
        );
  }
}

