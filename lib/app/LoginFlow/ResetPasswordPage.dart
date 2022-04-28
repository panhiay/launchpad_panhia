import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:launchpad_tv_panhia/app/LoginFlow/LoginPage.dart';
import 'package:launchpad_tv_panhia/app/colors/colors.dart';
import '../../services/share_preferences_services.dart';

class ResetPasswordPage extends StatefulWidget {



  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();

}

class _ResetPasswordPageState extends State<ResetPasswordPage> {

 // const ResetPasswordPage({Key? key}) : super(key: key);
  final PrefService _prefService = PrefService();
  final email = TextEditingController();

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
                        "Reset Password",
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
                    padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    child: TextField(
                      controller: email,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.person, color:iconColorDark)

                      ),
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.topRight,
                  height: 25.0,
                  width: 300.0,
                ),
                SizedBox(
                  width: 300,
                  height: 45,

                  child: ElevatedButton(

                    onPressed: (){
                      if (email.text.isEmpty){
                        const snackBar = SnackBar(
                          content: Text('Email is empty or Invalid'),
                          backgroundColor: errorColor,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: const Text("Send"),
                    style: ElevatedButton.styleFrom(
                      primary: secondaryColor,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.topRight,
                  height: 25.0,
                  width: 300.0,
                ),

                SizedBox(
                  width: 150,
                  height: 45,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      shadowColor: Colors.black,
                    ),
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        // goes to MyHomePage for now until can get login authentication setup
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );

                    },
                    icon: Icon(CupertinoIcons.xmark_circle_fill, size: 20, color: Colors.grey,),
                   label: Text("CANCEL"),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}

