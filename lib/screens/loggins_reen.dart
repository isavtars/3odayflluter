import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/route.dart';

class Loginform extends StatefulWidget {
  const Loginform({super.key});

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  //hook area

  String name = "";
  String password = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    //case when we doesnot use law of app we doesnt return scffold
    //return Material
    return Material(
        color: Colors.white,
        //its make scrooling views
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/bpn.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'welcome $name $password ',
              style: GoogleFonts.lato(
                textStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.5),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                      () {};
                    },
                    decoration: const InputDecoration(
                        hintText: "EnteruserName", labelText: "UserName"),
                  ),
                  TextFormField(
                    onChanged: (value) {
                      password = value;
                      setState(() {});
                    },
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
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  // debugPrint("here you write function to implemet logic");
                  Navigator.pushNamed(context, MyRoute.homeRoute);
                },
                style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                child: Text("login")),
            SizedBox(
              height: 10,
            ),
            //hadle click event from noclick widgetsw
            InkWell(
                onTap: () async {
                  setState(() {
                    if (changeButton == true) {
                      changeButton = false;
                      debugPrint(' heres your bbol is :$changeButton');
                    } else {
                      changeButton = true;
                      debugPrint(' heres your bbol is :$changeButton');
                    }
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoute.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton ? 100 : 132,
                  height: 52,
                  alignment: Alignment.center,
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text("login",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )),
                  decoration: BoxDecoration(
                      color: changeButton
                          ? Colors.red
                          : Color.fromARGB(255, 116, 0, 151),
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 10)),
                )),

            SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/b.jpg",
              semanticLabel: "hello",
              width: 300,
            )
          ],
        )));
  }
}
