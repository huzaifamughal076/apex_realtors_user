import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'LoginScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff616E8F),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset("assets/images/apex_logo.png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "SIGN UP",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 50, 15, 0),
              child: TextFormField(
                // validator: (email) {
                //   if (email!.isEmpty || email == null) {
                //     setState(() {
                //       errorMessage = emailErrorMessage;
                //       emailError = true;
                //     });
                //     return " ";
                //   } else if (!emailValid.hasMatch(email)) {
                //     setState(() {
                //       errorMessage = "Email formate not correct";
                //       emailError = true;
                //     });
                //     return " ";
                //   } else {
                //     setState(() {
                //       emailError = false;
                //     });
                //     Email = email;
                //     return null;
                //   }
                // },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Name",
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: TextFormField(
                // validator: (email) {
                //   if (email!.isEmpty || email == null) {
                //     setState(() {
                //       errorMessage = emailErrorMessage;
                //       emailError = true;
                //     });
                //     return " ";
                //   } else if (!emailValid.hasMatch(email)) {
                //     setState(() {
                //       errorMessage = "Email formate not correct";
                //       emailError = true;
                //     });
                //     return " ";
                //   } else {
                //     setState(() {
                //       emailError = false;
                //     });
                //     Email = email;
                //     return null;
                //   }
                // },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email",
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: TextFormField(
                // validator: (email) {
                //   if (email!.isEmpty || email == null) {
                //     setState(() {
                //       errorMessage = emailErrorMessage;
                //       emailError = true;
                //     });
                //     return " ";
                //   } else if (!emailValid.hasMatch(email)) {
                //     setState(() {
                //       errorMessage = "Email formate not correct";
                //       emailError = true;
                //     });
                //     return " ";
                //   } else {
                //     setState(() {
                //       emailError = false;
                //     });
                //     Email = email;
                //     return null;
                //   }
                // },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Phone",
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: TextFormField(
                // validator: (email) {
                //   if (email!.isEmpty || email == null) {
                //     setState(() {
                //       errorMessage = emailErrorMessage;
                //       emailError = true;
                //     });
                //     return " ";
                //   } else if (!emailValid.hasMatch(email)) {
                //     setState(() {
                //       errorMessage = "Email formate not correct";
                //       emailError = true;
                //     });
                //     return " ";
                //   } else {
                //     setState(() {
                //       emailError = false;
                //     });
                //     Email = email;
                //     return null;
                //   }
                // },
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: TextFormField(
                // validator: (email) {
                //   if (email!.isEmpty || email == null) {
                //     setState(() {
                //       errorMessage = emailErrorMessage;
                //       emailError = true;
                //     });
                //     return " ";
                //   } else if (!emailValid.hasMatch(email)) {
                //     setState(() {
                //       errorMessage = "Email formate not correct";
                //       emailError = true;
                //     });
                //     return " ";
                //   } else {
                //     setState(() {
                //       emailError = false;
                //     });
                //     Email = email;
                //     return null;
                //   }
                // },
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: 115,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xff7E8BAC),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                child: Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                                  (Route<dynamic> route) => false);
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ))),
              ),
            ),
            Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Already have an account ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      GestureDetector(
                        onTap: () {
                          Get.offAll(LoginScreen());
                        },
                        child: Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Click Here ",
                              style:
                              TextStyle(fontSize: 20, color: Color(0xff00a8fc)),
                            )),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
