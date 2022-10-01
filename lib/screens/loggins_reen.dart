import 'package:flutter/material.dart';
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
  bool hiddenPassword = true;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    debugPrint('$_formKey.currentState');
    if (_formKey.currentState!.validate()) {
      setState(() {
        //implemnt dart as logic not js
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoute.homeRoute);
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        //implemnt dart as logic not js
        changeButton = false;
      });
      _formKey.currentState!.reset();
    }
  }

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
                "assets/images/hey.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'welcome  ',
                style: GoogleFonts.lato(
                  textStyle:
                      TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 15.5),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                          () {};
                        },
                        validator: (value) {
                          bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch('$value');
                          if (value!.isEmpty) {
                            return "email shouldnot be  empty";
                          } else if (!emailValid) {
                            return "email not valid";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            icon: Icon(Icons.email),
                            hintText: "Enter email",
                            labelText: "Email"),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          password = value;
                          setState(() {});
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password shouldnot be  empty";
                          } else if (value.length <= 8) {
                            return "password should be greter than 6";
                          }
                          return null;
                        },
                        //texttypelike
                        obscureText: hiddenPassword ? true : false,
                        decoration: const InputDecoration(
                            icon: Icon(Icons.password),
                            //palceholder and label
                            hintText: "Enterpassword",
                            labelText: "Password"),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (hiddenPassword == true) {
                        hiddenPassword = false;
                      } else {
                        hiddenPassword = true;
                      }
                    });
                  },
                  child: Icon(hiddenPassword
                      ? Icons.password_rounded
                      : Icons.show_chart)),
              //hadle click event from noclick widgetsw

              Material(
                color: !changeButton ? Colors.purple : Colors.red,
                borderRadius: BorderRadius.circular(changeButton ? 300 : 10),
                child: InkWell(
                    // splashColor: Colors.yellow,
                    onTap: () => moveToHome(context),
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
                    )),
              ),
            ],
          ),
        ));
  }
}
