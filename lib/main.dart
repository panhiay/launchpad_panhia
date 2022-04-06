import 'package:flutter/cupertino.dart';
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
        actions: [

          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(0),
              child: new DropdownButtonHideUnderline(child: Region()),
            ),
          ),
          Help(),
          Login(),
          VDivider(),
          Notifications(),
        ]
      ),
      body: RowsAndColumns(),
    );
  }
  ////////////////////////////////////////////////////////
}
class RowsAndColumns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
      width: 250,
        child: Drawer(

          backgroundColor: Color(0xff235790),
          child: ListView(
            padding: EdgeInsets.all(20),
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.menu,
                  size: 25,
                  color: Color(0xff89e4da),
                ),
                title: Image.asset(
                  'logos/caesarsE_logo.png',
                  height: 50,
                  width: 50,
                ),
                //onTap: () => {},
              ),

              //Horizontal Divider
              Expanded(
                child: Container(
                    child: Divider(
                      color: Colors.white24,
                      height: 25,
                    )),
              ),

              // Menu Item

              
              ListTile(
                leading: Icon(Icons.dashboard, color: Color(0xff89e4da)),
                title: Text(
                    'Dashboard',
                    style: TextStyle(fontSize: 14)),
                textColor: Colors.white,
                //onTap: () => {},
              ),

              ListTile(
                leading: Icon(Icons.bar_chart_outlined, color: Color(0xff89e4da)),
                title: Text(
                    'Optimize',
                    style: TextStyle(fontSize: 14)),
                textColor: Colors.white,
                trailing: Icon(
                  CupertinoIcons.minus,
                  color: Colors.white,
                  size: 12),
                //onTap: () => {},
              ),
              TextButton(
                style: TextButton.styleFrom( primary: Colors.white),
                onPressed: () {},
                child:
                Text(
                  "Analytics",
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.left,
                ),
              ),
              ListTile(
                leading: Icon(Icons.add_box_outlined, color: Color(0xff235790)),
                title: Text(
                    'Report Builder',
                    style: TextStyle(fontSize: 13)),
                textColor: Colors.white,
                trailing: Icon(
                    CupertinoIcons.minus,
                    color: Colors.white,
                    size: 13),
                //onTap: () => {},
              ),
              TextButton(
                style: TextButton.styleFrom( primary: Colors.white),
                onPressed: () {},
                child:
                Text(
                  "Rooms",
                  style: TextStyle(fontSize: 11),
                  textAlign: TextAlign.left,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom( primary: Colors.white),
                onPressed: () {},
                child:
                Text(
                  "Reservations",
                  style: TextStyle(fontSize: 11),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom( primary: Colors.white),
                onPressed: () {},
                child:
                Text(
                  "Charged off",
                  style: TextStyle(fontSize: 11),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

class Region extends StatefulWidget {
  const Region({Key? key}) : super(key: key);

  @override
  State<Region> createState() => _RegionState();
}

class _RegionState extends State<Region> {
  String dropdownValue = 'IST';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(

      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.black,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['IST', 'EDT', 'CST', 'PDT','MST', 'UTC', 'MDT']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

  }
}

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(primary: Colors.white),
      onPressed: () {},
      child:
      Text(
          "Help",
          style: TextStyle(fontWeight: FontWeight.bold)
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(primary: Colors.white),
      onPressed: () {},
      child:
      Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold)
      ),
    );
  }
}

class VDivider extends StatefulWidget {
  const VDivider({Key? key}) : super(key: key);

  @override
  State<VDivider> createState() => _VDividerState();
}

class _VDividerState extends State<VDivider> {

  @override
  Widget build(BuildContext context) {
    return Align(
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
    );
  }
}

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return  Icon(Icons.notifications);
  }
}

