import 'package:apex_realtors_user/Screens/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'AgentScreen.dart';
import 'ChatScreen.dart';
import 'FavoriteScreen.dart';
import 'HomeScreen.dart';
import 'SettingScreen.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {

  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    const ChatScreen(),
    const AgentScreen(),
    const FavoriteScreen(),
    const SettingScreen(),
  ];


  @override
  void initState() {
    pages[pageIndex];
  }

  void change(){
    setState(() {
      pages[pageIndex];
    });

  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Stack(
        children: [

          pages[pageIndex],
          Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: size.width,
                height: 80,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(size.width,80),
                      painter: BNBCustomPainter(),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: size.width,
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                              onTap:(){
                               setState(() {
                                 pageIndex == 0;
                               });
                              },
                              child: Image.asset("assets/images/ic_home.png",width: 40,height: 40,)),
                          GestureDetector(
                              onTap: (){ setState(() {
                                ChatScreen();

                              }); },
                              child: Image.asset("assets/images/messages.png",width: 40,height: 40,)),
                          GestureDetector(
                              onTap: (){ setState(() {
                                pageIndex == 2;
                              }); },
                              child: Image.asset("assets/images/ic_agent.png",width: 40,height: 40,)),
                          GestureDetector(
                              onTap: (){ setState(() {
                                pageIndex ==3;
                              }); },
                              child: Image.asset("assets/images/ic_heart.png",width: 40,height: 40,)),
                          GestureDetector(
                              onTap: (){ setState(() {
                                pageIndex ==3;
                              }); },
                              child: Image.asset("assets/images/ic_settings.png",width: 40,height: 40,)),

                        ],
                      ),
                    )

                  ],
                ),
              )),

        ],
      ),
    );
  }
}
