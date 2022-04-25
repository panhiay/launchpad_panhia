import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launchpad_tv_panhia/Pages/CompanyPage.dart';
import 'package:launchpad_tv_panhia/colors/colors.dart';
import 'package:launchpad_tv_panhia/services/share_preferences_services.dart';
import '../LoginFlow/routes.dart';

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
        child: const VerticalDivider(
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
      color: primaryColor,
      alignment: Alignment.center, // where to position the child
      child: Container(
        padding: const EdgeInsets.all(5.0),
        width: 75.0,
        height: 25.0,
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
            items: <String>['IST', 'EDT', 'CST', 'PDT','MST', 'UTC', 'MDT']
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

class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  final PrefService _prefService = PrefService();
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: () async {
        await _prefService.readCache("password").whenComplete(() {
          Navigator.of(context).pushNamed(LoginRoute);
        }
        );
      },
      child:
      const Text(
          "Logout",
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
    return  const Icon(Icons.notifications_outlined, color: iconColorLight);
  }
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final String _email = "email@edisoninteractive.com";

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: TextButton.icon(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
            ),
            icon: const Icon(CupertinoIcons.profile_circled, size: 23, color: iconColorLight,),
            onPressed: (){},
            label: Text(_email, style: const TextStyle(fontSize: 14, color: iconColorLight))
        )
    );

  }
}
