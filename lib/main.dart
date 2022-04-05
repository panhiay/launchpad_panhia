import 'package:flutter/material.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Edison TV';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      title: _title,

      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );

  }
}

class MyHomePage extends StatelessWidget {

  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xff235790),
        leading: Image.asset('logos/logo.png'),
        titleSpacing: 0,
        title: Text(
            'EDISON\nINTERACTIVE',
                style: TextStyle(fontSize: 12),
        ),

        actions: <Widget> [


          //Help button
          TextButton(
            style: TextButton.styleFrom( primary: Colors.white),
            onPressed: () {},
            child:
              Text(
                "Help",
                style: TextStyle(fontWeight: FontWeight.bold),

              ),
          ),
          //Login Button
          TextButton(
            style: TextButton.styleFrom( primary: Colors.white),
            onPressed: () {},
            child:
            Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          // Verticle Divider
            Align(
            alignment: Alignment.topCenter,
              child: Container(
              height: 80,
              padding: const EdgeInsets.all(5),
              child: VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                indent: 5,
                endIndent: 5,
                width: 25,
               ),
              ),
            ),

          //notification bell icon
          Icon(Icons.notifications),
        ]
      ),

      body: Column(
        children: [
          Container (

            color: Color(0xff235790),
            width: 200,
            height: 1000,
          ),

        ]

      ),
    );

  }
}
