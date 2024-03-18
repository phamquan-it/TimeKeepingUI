import 'package:flutter/material.dart';
import 'package:timekeeping/ChamCongLayout.dart';
import 'package:timekeeping/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quản lý  chấm công',
      home: Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'Chấm công',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w200
            ),
          ),
        ),
      //  body: ChamCong(),
        body: Login(),
      ),
    );
  }
}
