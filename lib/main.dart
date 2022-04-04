import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Edison TV';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
      debugShowCheckedModeBanner: false,
    );

  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/logos.ei_logo.png'),
        title: Text(
            'EDISON\nINTERACTIVE'),

        actions: <Widget> [
          FlatButton(
            textColor: Colors.white,
            onPressed: () {},
            child:
              Text(
                "Help",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
          ),
          FlatButton(
            textColor: Colors.white,
            onPressed: () {},
            child:
            Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          )
        ]

      ),
    );
  }

}
