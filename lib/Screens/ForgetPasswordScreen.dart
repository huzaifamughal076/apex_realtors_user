import 'package:apex_realtors_user/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forget Password"),
      backgroundColor: Color(0xff616E8F),),
      backgroundColor: Color(0xffEEEEEE),
      body: SafeArea(
        child: Column(

          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Enter your email here to receive a reset link",
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff908E8E),
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
              width: 115,
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Color(0xff7E8BAC),
                borderRadius: BorderRadius.circular(19),
              ),
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
                        "Reset",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
