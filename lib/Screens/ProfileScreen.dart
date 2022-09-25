import 'package:apex_realtors_user/Screens/LoginScreen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(title: Text("Profile"),
        backgroundColor: Color(0xff616E8F),
      ),
      
      body: Container(
        margin: EdgeInsets.all(30),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(19)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 60 ,child: Image.asset("assets/images/profile_logo.png",fit: BoxFit.fill,)),
            SizedBox(height: 10,),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Name",style: TextStyle(color:Colors.black,fontSize: 18),)),
            Container(
              decoration: BoxDecoration(color: Color(0xffEEEEEE),borderRadius: BorderRadius.circular(19)),
              margin: EdgeInsets.all(10),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child:Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("Huzaifa")),
            ),

            SizedBox(height: 10,),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Email",style: TextStyle(color:Colors.black,fontSize: 18),)),
            Container(
              decoration: BoxDecoration(color: Color(0xffEEEEEE),borderRadius: BorderRadius.circular(19)),
              margin: EdgeInsets.all(10),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child:Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("huzaifamughal076@gmail.com")),
            ),

            SizedBox(height: 10,),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Phone",style: TextStyle(color:Colors.black,fontSize: 18),)),
            Container(
              decoration: BoxDecoration(color: Color(0xffEEEEEE),borderRadius: BorderRadius.circular(19)),
              margin: EdgeInsets.all(10),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child:Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("03224755176")),
            ),

            SizedBox(height: 10,),

            ElevatedButton(

                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xff616E8F)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                            side: BorderSide.none
                        )
                    )
                ),

                onPressed: (){
                  Get.offAll(LoginScreen());
                }, child:
            Container(
              height: 48,
              width: 116,
              padding: EdgeInsets.all(10),
              child: Center(child: Text("Logout")),
            ))

          ],
        ),
      ),



    );
  }
}
