import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff235790),
          centerTitle: false,
          titleSpacing: 0.0,
          title: Image.asset('logos/ei_logo.png', fit: BoxFit.contain, height: 50,),
      ),
      body: Padding(
        padding: EdgeInsets.all(50.0),
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
                      color: Color(0xff235790),
                      fontSize: 18))],
              ),


              Container(
                padding: EdgeInsets.only(top: 25, left: 5),
                height: 40.0,
                width: 300.0,
                child: const Text(
                    "Email",
                style: TextStyle(
                    color: Color(0xff235790),
                fontSize: 12))
              ),

              const SizedBox(
                height:50,
                  width: 300.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.person, color:Color(0xff235790))

                    ),
                  ),
                ),
              ),

              Container(
                  padding: EdgeInsets.only(top: 25, left: 5),
                  height: 40.0,
                  width: 300.0,
                  child: const Text(
                      "Password",
                      style: TextStyle(
                          color: Color(0xff235790),
                          fontSize: 12))
              ),

              const SizedBox(
                height: 50,
                width: 300.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.key, color:Color(0xff235790))

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
                  onPressed: () {},
                  child:
                  const Text(
                      "Forgot Password?",
                      style: TextStyle(color:Color(0xff235790))
                  ),
                ),

              ),

              SizedBox(
                width: 300,
                height: 45,

                child: ElevatedButton(

                  onPressed: (){},
                    child: const Text("LOGIN"),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff4c86b3),
                  ),
                  ),
                ),
            ]
          ),
        ),
      ),
    );
  }
}

