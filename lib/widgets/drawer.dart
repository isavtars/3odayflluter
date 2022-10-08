import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  final imgurl =
      "https://imgs.search.brave.com/wsS674lKz8QxQFmb_ZeebH3n6epp7_dGh_7zHUiesDE/rs:fit:389:389:1/g:ce/aHR0cHM6Ly9hdmF0/YXJzMy5naXRodWJ1/c2VyY29udGVudC5j/b20vdS8zMDMxNjE5/Mz9zPTQwMCZ1PWIz/NWEzYTAxZmIyYzYx/MGIyYzNjNGFjYmI1/YjQ0NmE0NmFmMWFi/OTQmdj00";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green,
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 18, 3),
                ),
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountName: Text("Bibek chhetri",
                        style: TextStyle(
                          color: Color.fromARGB(255, 240, 224, 3),
                          fontSize: 20,
                        )),
                    accountEmail: Text("bibchhetri@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(imgurl),
                        backgroundColor: Colors.red))),
            ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text("Home",
                    style: TextStyle(color: Colors.white, fontSize: 18))),
            ListTile(
                leading: Icon(Icons.account_circle, color: Colors.white),
                title: Text("Accounts",
                    style: TextStyle(color: Colors.white, fontSize: 18))),
            ListTile(
                leading: Icon(Icons.mail, color: Colors.white),
                title: Text("Email me",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )))
          ],
        ),
      ),
    );
  }
}
