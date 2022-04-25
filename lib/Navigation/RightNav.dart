import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launchpad_tv_panhia/Pages/CompanyPage.dart';
import 'package:launchpad_tv_panhia/services/share_preferences_services.dart';
import '../LoginFlow/routes.dart';
import '../colors/colors.dart';


class HDivider extends StatefulWidget {
  const HDivider({Key? key}) : super(key: key);

  @override
  State<HDivider> createState() => _HDividerState();
}

class _HDividerState extends State<HDivider> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Divider(
        color: Colors.white24,
        height: 25,
      ),

    );
  }
}

class RightNav extends StatefulWidget {
  const RightNav({Key? key}) : super(key: key);

  @override
  State<RightNav> createState() => _RightNavState();
}

class _RightNavState extends State<RightNav> {
  String dropdownValue = 'IST';
  String version = 'v2022.04.06';
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 1000.00) {
      return  ExpandedNavi(version);

    } else {
      return  CollapsedNavi(version);
    }
  }
}

class ExpandedNavi extends StatelessWidget {
  final String version;
  ExpandedNavi(this.version, {Key? key}) : super(key: key);
  String dropdownValue = '- Select a Company -';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          const ExpandCol(),
          const HDivider(),
          const Company(),
          const HDivider(),
          const Dashboard(),
          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: const Optimize(),
          ),
          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: const Manage(),
          ),
          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: const Monetize(),
          ),
          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: const Settings(),
          ),
          const HDivider(),
           Text(version,
               style: const TextStyle(
                   color: Colors.white,
                   fontSize: 11))
        ],
      ),
    );
  }
}

class CollapsedNavi extends StatelessWidget {
  final String version;
  const CollapsedNavi(this.version, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75, // 75% of screen will be occupied
      child: Drawer(
        backgroundColor: primaryColor,
        child: ListView (
        padding: const EdgeInsets.all(15),
        children:  <Widget>[
          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: IconButton(
            icon: const Icon(Icons.menu, size: 25, color: iconColorLight),
            onPressed: (){}
          ),
      ),


          const HDivider(),

          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: IconButton(
                icon: const Icon(Icons.dashboard, size: 25, color: iconColorLight),
                onPressed: (){}
            ),
          ),

          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: IconButton(
                icon: const Icon(Icons.auto_graph_outlined, size: 25, color: iconColorLight),
                onPressed: (){}
            ),
          ),

          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: IconButton(
                icon: const Icon(Icons.manage_accounts, size: 25, color: iconColorLight),
                onPressed: (){}
            ),
          ),
          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: IconButton(
                icon: const Icon(CupertinoIcons.money_dollar_circle, size: 25, color: iconColorLight),
                onPressed: (){}
            ),
          ),

          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: IconButton(
                icon: const Icon(Icons.settings, size: 25, color: iconColorLight),
                onPressed: (){}
            ),
          ),

          const HDivider(),
          Text(version,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11))
        ]
        )
      ),
    );

  }
}


/// ***********************************************/

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
      color: primaryColor,
      alignment: Alignment.centerLeft, // where to position the child
      child: Container(
        padding: const EdgeInsets.all(5.0),
        width: 200.0,
        height: 30.0,
        color: Colors.white,
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: dropdownValue,
            alignment: Alignment.center,
            icon: const Icon(Icons.arrow_drop_down),
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
                    style: const TextStyle(fontSize: 12)
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
        color: iconColorLight,
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
      leading: const Icon(Icons.dashboard, color: iconColorLight,),
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
                  leading: const Icon(Icons.auto_graph_outlined, color: iconColorLight,),
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
                  leading: const Icon(Icons.manage_accounts, color: iconColorLight,),
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
            padding: const EdgeInsets.only(left: 75),
            child: Align (
              alignment: Alignment.centerLeft,
              child: Text(
                  name,
                  style: const TextStyle(color: Colors.white, fontSize: 13)
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
            padding: const EdgeInsets.only(left: 95),
            child: Align (
              alignment: Alignment.centerLeft,
              child: Text(
                  name,
                  style: const TextStyle(color: Colors.white, fontSize: 13)
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
                  leading: const Icon(CupertinoIcons.money_dollar_circle, color: iconColorLight,),
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
                  leading: const Icon(Icons.settings, color: iconColorLight,),
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