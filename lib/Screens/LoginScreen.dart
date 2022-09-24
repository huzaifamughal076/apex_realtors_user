import 'package:apex_realtors_user/Screens/ForgetPasswordScreen.dart';
import 'package:apex_realtors_user/Screens/SignUpScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff616E8F),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Image.asset("assets/images/apex_logo.png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "LOGIN",
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
              margin: EdgeInsets.fromLTRB(15, 30, 15, 0),
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
            GestureDetector(
              onTap: (){Get.to(ForgetPasswordScreen());},
              child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Text(
                    "Forget Password",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Container(
              width: 115,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xff7E8BAC),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                            (Route<dynamic> route) => false);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ))),
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
                        "Create a new account: ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  GestureDetector(
                    onTap: () {
                      Get.offAll(SignUpScreen());
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
            ))
          ],
        ),
      ),
    );
  }
}
