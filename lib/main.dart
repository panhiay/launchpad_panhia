import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:launchpad_tv_panhia/MyHomePage.dart';
import 'package:launchpad_tv_panhia/LoginPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Edison Interactive Launchpad - Panhia';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      title: _title,

      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );

  }
}

