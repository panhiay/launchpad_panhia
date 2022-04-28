import 'package:flutter/material.dart';
import 'package:launchpad_tv_panhia/app/LoginFlow/ResetPasswordPage.dart';
import 'package:launchpad_tv_panhia/services/share_preferences_services.dart';
import '../colors/colors.dart';
import 'routes.dart';


class LoginPage extends StatefulWidget {



  @override
  State<StatefulWidget> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{
  final PrefService _prefService = PrefService();
  final email = TextEditingController();
  final password = TextEditingController();
  String error = '';

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: primaryColor,
          centerTitle: false,
          titleSpacing: 0.0,
          title: Image.asset('logos/EILogoDark.png', fit: BoxFit.contain, height: 50,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [


                  Text(
                      "Login",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 18))],
              ),


              Container(
                padding: const EdgeInsets.only(top: 25, left: 5),
                height: 40.0,
                width: 300.0,
                child: const Text(
                    "Email",
                style: TextStyle(
                   color: primaryColor,
                fontSize: 12))
              ),

               SizedBox(
                height:50,
                  width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),

                  child: TextField(
                    controller: email,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.person, color: iconColorDark)

                    ),
                  ),
                ),
              ),

              Container(
                  padding: const EdgeInsets.only(top: 25, left: 5),
                  height: 40.0,
                  width: 300.0,
                  child: const Text(
                      "Password",
                      style: TextStyle(
                          color: Color(0xff235790),
                          fontSize: 12))
              ),

               SizedBox(
                height: 50,
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                  child: TextField(
                    controller: password,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.key, color: iconColorDark)

                    ),
                  ),
                ),
              ),



              Container(
                alignment: Alignment.topRight,
                  height: 40.0,
                  width: 300.0,

                child: TextButton(

                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {

                    Navigator.pushReplacement(
                        context,
                      MaterialPageRoute(builder: (context) =>  ResetPasswordPage()),
                    );
                  },
                  child:
                  const Text(
                      "Forgot Password?",
                      style: TextStyle(color:primaryColor)
                  ),
                ),

              ),



              SizedBox(
                width: 300,
                height: 45,

                child: ElevatedButton(

                  onPressed: () async{
                    _prefService.createCache(password.text).whenComplete(() {
                      if ( email.text.isNotEmpty && password.text.isNotEmpty){
                        Navigator.of(context).pushNamed(HomeRoute);
                       // Navigator.pushReplacement(context,
                           // MaterialPageRoute(builder: (context) => MyHomePage()));
                      } else if (email.text.isEmpty){
                        const snackBar = SnackBar(
                            content: Text('Email or Password is empty'),
                        backgroundColor: errorColor,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } else if (password.text.isEmpty){
                        const snackBar = SnackBar(
                          content: Text('Email or Password is empty'),
                          backgroundColor: errorColor,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } else if (email.text.isEmpty && password.text.isEmpty){
                        const snackBar = SnackBar(
                          content: Text('Email or Password is empty'),
                          backgroundColor: errorColor,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    });
                    },
                  child: const Text("LOGIN"),
                  style: ElevatedButton.styleFrom(
                    primary: secondaryColor,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.topCenter,
                height: 40.0,
                width: 300.0,
                child: Text(error, style: const TextStyle(color:errorColor)
                  ),
                ),

            ]
          ),
        ),
      ),
    );
  }

}

