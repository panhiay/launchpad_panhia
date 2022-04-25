import 'dart:async';
import 'package:flutter/material.dart';
import 'package:launchpad_tv_panhia/colors/colors.dart';
import 'package:launchpad_tv_panhia/services/share_preferences_services.dart';
import 'routes.dart';

class SplashView extends StatefulWidget {

  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends State<SplashView> {

  final PrefService _prefService = PrefService();

  @override
  void initState() {
    _prefService.readCache("password").then((value) {
    print(value.toString());
      if(value != null){
        return Timer(
          const Duration(seconds: 2),
            () => Navigator.of(context).pushNamed(HomeRoute));
      } else {
        return Timer(
          const Duration(seconds: 2),
                () => Navigator.of(context).pushNamed(LoginRoute));
        }
    }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
          centerTitle: false,
          titleSpacing: 0.0,
          title: Image.asset('logos/ei_logo.png', fit: BoxFit.contain, height: 50,),
    ),

    body: const Center( child: Text("Loading..."))
    );
  }
}