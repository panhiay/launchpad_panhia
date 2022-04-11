import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatelessWidget {

  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff235790),
          centerTitle: false,
          titleSpacing: 0.0,
          title: Image.asset('logos/ei_logo.png', fit: BoxFit.contain, height: 50,),

          actions: [
            Region(),
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
            ExpandCol(),
            HDivider(),
            Company(),
            HDivider(),
            Dashboard(),
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
              ),
              child: Optimize(),
            ),
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
              ),
              child:Manage(),
            ),
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
              ),
              child:Monetize(),
            ),
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
              ),
              child:Settings(),
            ),
            HDivider(),
            Container(
              child: Text('v2022.04.06', style: TextStyle(color: Colors.white, fontSize: 11)),
            )
          ],
        ),
      ),
    );
  }
}
// Design ---------------------------------------------------------------------

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

class HDivider extends StatefulWidget {
  const HDivider({Key? key}) : super(key: key);

  @override
  State<HDivider> createState() => _HDividerState();
}

class _HDividerState extends State<HDivider> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Divider(
          color: Colors.white24,
          height: 25,
        ),
      ),
    );
  }
}


// App Bar --------------------------------------------------------------------

class Region extends StatefulWidget {
  const Region({Key? key}) : super(key: key);

  @override
  State<Region> createState() => _RegionState();
}

class _RegionState extends State<Region> {
  String dropdownValue = 'IST';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.0,
      color: Color(0xff235790),
      alignment: Alignment.center, // where to position the child
      child: Container(
        padding: EdgeInsets.all(5.0),
        width: 75.0,
        height: 25.0,
        color: Colors.white,
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: dropdownValue,
            alignment: Alignment.center,
            icon: Icon(Icons.arrow_drop_down),
            elevation: 10,
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
                child: Text(
                    value,
                    style: TextStyle(fontSize: 12)
                ),
              );
            }).toList(),
          ),
        ),
      ),
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
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: () {},
      child:
      const Text(
          "Help",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
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
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: () {},
      child:
      const Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
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
    return  const Icon(Icons.notifications);
  }
}


// Body -----------------------------------------------------------------------


class Company extends StatefulWidget {
  const Company({Key? key}) : super(key: key);

  @override
  State<Company> createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
  String dropdownValue = '- Select a Company -';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.0,
      color: const Color(0xff235790),
      alignment: Alignment.centerLeft, // where to position the child
      child: Container(
        padding: EdgeInsets.all(5.0),
        width: 200.0,
        height: 30.0,
        color: Colors.white,
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: dropdownValue,
            alignment: Alignment.center,
            icon: Icon(Icons.arrow_drop_down),
            elevation: 10,
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
            items: <String>['- Select a Company -', 'All', 'Company A', 'Company B', 'Company C', 'Company D','Company E']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                    value,
                    style: TextStyle(fontSize: 12)
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );

  }
}


class ExpandCol extends StatefulWidget {
  const ExpandCol({Key? key}) : super(key: key);

  @override
  State<ExpandCol> createState()  => _ExpandCol();
}

class _ExpandCol extends State<ExpandCol> {
  @override

  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
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
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return ListTile(

      contentPadding: const EdgeInsets.only(left:15),
      leading: Icon(Icons.dashboard, color: Color(0xff89e4da),),
      title: const Text(
          'Dashboard',
          style: TextStyle(fontSize: 14)),
      textColor: Colors.white,
      onTap: ((){}),
    );

  }
}

class Optimize extends StatefulWidget {
  const Optimize({Key? key}) : super(key: key);

  @override
  State<Optimize> createState() => _OptimizeState();
}

class _OptimizeState extends State<Optimize> {
  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }


  @override
  Widget build(BuildContext context) {

    return  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListTile(
                      contentPadding: const EdgeInsets.only(left:15),
                      leading: Icon(Icons.auto_graph_outlined, color: Color(0xff89e4da),),
                      title: const Text(
                          'Optimize',
                          style: TextStyle(fontSize: 14)),
                      textColor: Colors.white,
                      trailing: Icon((_isVisible == false) ? CupertinoIcons.plus : CupertinoIcons.minus,
                        color: Colors.white,
                        size: 12,
                      ),
                      onTap: () => {
                        setState (() {
                          _isVisible = !_isVisible;
                        }
                        ),}
                  ),
                ]
            ),
            Visibility(
              visible: _isVisible,
              child: const Level2Buttons("Analytics"),
            ),
            Visibility(
              visible: _isVisible,
              child: const ReportBuilder(),
            ),

            Visibility(
              visible: _isVisible,
              child: const Level2Buttons("QR Code"),
            ),

            Visibility(
              visible: _isVisible,
              child: const Level2Buttons("Utilization"),
            ),

            Visibility(
              visible: _isVisible,
              child: const Level2Buttons("Live Map"),
            ),
          ],
    );

  }
}

class ReportBuilder extends StatefulWidget {
  const ReportBuilder({Key? key}) : super(key: key);

  @override
  State<ReportBuilder> createState() => _ReportBuilderState();
}

class _ReportBuilderState extends State<ReportBuilder> {
  bool _isVisible = true;

  void showBtn() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(

            contentPadding: const EdgeInsets.only(left: 75),
            title: const Text(
                'Report Builder',
                style: TextStyle(fontSize: 13)),
            textColor: Colors.white,
            trailing: Icon((_isVisible == false) ? CupertinoIcons.plus : CupertinoIcons.minus,
              color: Colors.white,
              size: 12,
            ),
            onTap: () => {
              setState (() {
                _isVisible = !_isVisible;
              }
              ),}
        ),
        Visibility(
          visible: _isVisible,
          child: const Level3Buttons("Rooms"),
        ),
        Visibility(
          visible: _isVisible,
          child: const Level3Buttons("Reservations"),
        ),
        Visibility(
          visible: _isVisible,
          child: const Level3Buttons("Charged off"),
        ),
      ],
    );
  }
}

class Manage extends StatefulWidget {
  const Manage({Key? key}) : super(key: key);

  @override
  State<Manage> createState() => _ManageState();
}

class _ManageState extends State<Manage> {
  bool _isVisible = true;

  void showBtn() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                  contentPadding: const EdgeInsets.only(left:15),
                  leading: Icon(Icons.manage_accounts, color: Color(0xff89e4da),),
                  title: const Text(
                      'Manage',
                      style: TextStyle(fontSize: 14)),
                  textColor: Colors.white,
                  trailing: Icon((_isVisible == false) ? CupertinoIcons.plus : CupertinoIcons.minus,
                    color: Colors.white,
                    size: 12,
                  ),
                  onTap: () => {
                    setState (() {
                      _isVisible = !_isVisible;
                    }
                    ),}
              ),
            ]
        ),
        Visibility(
          visible: _isVisible,
          child: const Level2Buttons("Company"),
        ),

        Visibility(
          visible: _isVisible,
          child: const Level2Buttons("Locations"),
        ),

        Visibility(
          visible: _isVisible,
          child: const Level2Buttons("Screens"),
        ),

        Visibility(
          visible: _isVisible,
          child: const Level2Buttons("Groups"),
        ),
        Visibility(
          visible: _isVisible,
          child: const Level2Buttons("Interface"),
        ),
        Visibility(
          visible: _isVisible,
          child: const Level2Buttons("Alerts"),
        ),
        Visibility(
          visible: _isVisible,
          child: const Level2Buttons("Tickers"),
        ),
        Visibility(
          visible: _isVisible,
          child: const Level2Buttons("Themes"),
        ),
      ],
    );
  }
}

class Level2Buttons extends StatelessWidget {
  final String name;

  const Level2Buttons(this.name);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(

        ),
        child:InkWell(
          child: Container (
              height: 30,
              padding: EdgeInsets.only(left: 75),
              child: Align (
                alignment: Alignment.centerLeft,
                child: Text(
                    name,
                    style: TextStyle(color: Colors.white, fontSize: 13)
                ),
              )

          ),

          onTap: (() {}),
        ),
    );
  }

}

class Level3Buttons extends StatelessWidget {
  final String name;

  const Level3Buttons(this.name);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(

        ),

        child: InkWell(
      child: Container (
          height: 30,
          padding: EdgeInsets.only(left: 95),
          child: Align (
            alignment: Alignment.centerLeft,
            child: Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: 13)
            ),
          )

      ),

      onTap: (() {}),
    ),
    );
  }

}

class Monetize extends StatefulWidget {
  const Monetize({Key? key}) : super(key: key);

  @override
  State<Monetize> createState() => _MonetizeState();
}

class _MonetizeState extends State<Monetize> {
  bool _isVisible = true;

  void showBtn() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                  contentPadding: const EdgeInsets.only(left:15),
                  leading: Icon(CupertinoIcons.money_dollar_circle, color: Color(0xff89e4da),),
                  title: const Text(
                      'Monetize',
                      style: TextStyle(fontSize: 14)),
                  textColor: Colors.white,
                  trailing: Icon((_isVisible == false) ? CupertinoIcons.minus : CupertinoIcons.plus,
                    color: Colors.white,
                    size: 12,
                  ),
                  onTap: () => {
                    setState (() {
                      _isVisible = !_isVisible;
                    }
                    ),}
              ),
            ]
        ),
      ],
    );
  }
}

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isVisible = true;

  void showBtn() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                  contentPadding: const EdgeInsets.only(left:15),
                  leading: Icon(Icons.settings, color: Color(0xff89e4da),),
                  title: const Text(
                      'Settings',
                      style: TextStyle(fontSize: 14)),
                  textColor: Colors.white,
                  trailing: Icon((_isVisible == false) ? CupertinoIcons.minus : CupertinoIcons.plus,
                    color: Colors.white,
                    size: 12,
                  ),
                  onTap: () => {
                    setState (() {
                      _isVisible = !_isVisible;
                    }
                    ),}
              ),
            ]
        ),
      ],
    );
  }
}