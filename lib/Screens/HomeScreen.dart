import 'package:apex_realtors_user/Screens/ChatScreen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../ExternalWidgets/PropertyListItem.dart';
import 'AgentScreen.dart';
import 'FavoriteScreen.dart';
import 'ProfileScreen.dart';
import 'SettingScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> recentSearch = [
    "3 Marla",
    "10 Marlaaaaaaaaaa",
    "10 Marlaaaaaaaaaa",
    "10 Marlaaaaaaaaaa",
    "3 Marla",
    "3 Marla"
  ];

  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    const ChatScreen(),
    const AgentScreen(),
    const FavoriteScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                  title: Text('Huzaifa'),
                  backgroundColor: Color(0xff616E8F),
                  actions: [
                    Container(
                      margin: EdgeInsets.only(top: 10, right: 15, bottom: 10),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff4C566F)),
                      child: Container(
                          child: Row(
                            children: [
                              Container(
                                  width: 23,
                                  height: 24,
                                  child: Image.asset("assets/images/ic_coin.png")),
                              Text(
                                "1000",
                                style: TextStyle(fontSize: 15, color: Colors.white),
                              ),
                            ],
                          )),
                    ),
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),),
                  ),

                  pinned: true,
                  floating: true,
                  forceElevated: innerBoxIsScrolled,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(116),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                alignment: Alignment.centerLeft,
                                width: MediaQuery.of(context).size.width * 0.7,
                                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
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
                                    contentPadding: EdgeInsets.all(8),
                                    hintText: "Search",
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Icon(
                                          Icons.search,
                                          color: Colors.white,
                                          size: 30,
                                        ))),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.to(ProfileScreen());
                                },
                                child: CircleAvatar(
                                  radius: 15,
                                  child: Image.asset("assets/images/profile_logo.png"),
                                ),
                              ),
                            ],
                          ),

                          Container(

                            child: Container(
                              width: double.infinity,
                              height: 35,
                              margin: EdgeInsets.only(left: 8,right: 8),
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: recentSearch.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(10),
                                      margin: EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration
                                        (color: Colors.white,
                                          borderRadius: BorderRadius.circular(20)),

                                      child: Text(recentSearch[index]),
                                    );

                                  }),
                            ),

                          ),

                        ],
                      ),
                    ),
                  )),
            ];
          },
          body: PropertyListItem(),
        ),

      ],


    );

  }
}

class BNBCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
   Paint paint = Paint()..color=Color(0xff616E8F)..style=PaintingStyle.fill;
   Path path = Path()..moveTo(0, 50);

   path.quadraticBezierTo(size.width*0.01,-5, size.width*0.60, 2);
   path.quadraticBezierTo(size.width*0.60, 2, size.width*0.60, 2);
   path.quadraticBezierTo(size.width*0.99, 2, size.width, 50);

   path.lineTo(size.width, size.height);
   path.lineTo(0, size.height);
   path.close();

   canvas.drawShadow(path,Color(0xff616E8F), 50, true);
   canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
  
}