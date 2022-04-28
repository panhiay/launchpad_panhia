
import 'package:launchpad_tv_panhia/app/LoginFlow/LoginPage.dart';
import 'package:launchpad_tv_panhia/app/LoginFlow/SplashView.dart';
import 'package:launchpad_tv_panhia/main.dart';

const String SplashRoute = "/splash";
  const String HomeRoute = "/home";
  const String LoginRoute = "/login";

  final routes = {
    SplashRoute: (context) =>   SplashView(),
    HomeRoute: (context) =>  MainScreen(),
    LoginRoute: (context) =>  LoginPage(),
  };