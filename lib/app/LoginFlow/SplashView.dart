import 'dart:async';
import 'package:flutter/material.dart';
import 'package:launchpad_tv_panhia/app/colors/colors.dart';
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
          const Duration(seconds: 3),
            () => Navigator.of(context).pushNamed(HomeRoute));
      } else {
        return Timer(
          const Duration(seconds: 3),
                () => Navigator.of(context).pushNamed(LoginRoute));
        }
    }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    body:  SizedBox.expand(
        child: Container(
        color: primaryColor,
          child: Image.asset('logos/EILogoDark.png', height: 150)
      )
    )
    );
  }
}