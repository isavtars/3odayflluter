import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginform extends StatelessWidget {
  const Loginform({super.key});

  @override
  Widget build(BuildContext context) {
    //case when we doesnot use law of app we doesnt return scffold
    //return Material
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/bpn.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("welcome ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.5),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "EnteruserName", labelText: "UserName"),
                  ),
                  TextFormField(
                    //texttypelike
                    obscureText: true,
                    decoration: const InputDecoration(
                        //palceholder and label
                        hintText: "Enterpassword",
                        labelText: "Password"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  print("here you write function to implemet logic");
                },
                style: TextButton.styleFrom(),
                child: Text("login"))
          ],
        ));
  }
}
