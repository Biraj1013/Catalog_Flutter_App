import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(239, 6, 39, 223)),
                accountEmail: Text("ghimireViraj@gmail.com"),
                accountName: Text("Viraj Ghimire"),
                currentAccountPicture: CircleAvatar(),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Color.fromARGB(239, 6, 39, 223),
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Color.fromARGB(239, 6, 39, 223)),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
                  color: Color.fromARGB(239, 6, 39, 223)),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Color.fromARGB(239, 6, 39, 223)),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Color.fromARGB(239, 6, 39, 223),
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Color.fromARGB(239, 6, 39, 223)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
