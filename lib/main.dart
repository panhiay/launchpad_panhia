//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launchpad_tv_panhia/app/LoginFlow/routes.dart';
import 'Pages/CompanyPage.dart';
import 'app/Navigation/AppBar.dart';
import 'app/Navigation/RightNav.dart';
import 'app/colors/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  static const String _title = 'Edison Interactive Launchpad - Panhia';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: _title,
      initialRoute: SplashRoute,
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatelessWidget {

  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
         backgroundColor: primaryColor,
          centerTitle: false,
          titleSpacing: 0.0,
          title: Image.asset(
            'logos/EILogoDark.png', fit: BoxFit.contain, height: 50,),

          actions: const [
            Region(),
            Help(),
            Logout(),
            VDivider(),
            Notifications(),
            Profile(),

          ]
      ),
     body: Container(
       child: Row(
         children: const [
           RightNav(),
           Expanded(
             child:CompanyPage(),
           )
         ],
       )
     ),

    );
  }
}