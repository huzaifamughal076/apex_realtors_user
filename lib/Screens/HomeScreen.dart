import 'package:flutter/material.dart';

import '../ExternalWidgets/PropertyListItem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> recentSearch = ["3 Marla","10 Marlaaaaaaaaaa","10 Marlaaaaaaaaaa","10 Marlaaaaaaaaaa","3 Marla","3 Marla"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffEEEEEE),
        body: Column(
          children: [
            Material(
              elevation: 20,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
              child: Container(
                decoration: BoxDecoration(color: Color(0xff616E8F),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
                padding: EdgeInsets.only(top: 30,bottom: 50),

                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text("Huzaifa",style: TextStyle(fontSize: 22,color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xff4C566F)),
                            child: Container(child: Row(
                              children: [
                                Container(
                                  width: 23,
                                    height: 24,
                                    child: Image.asset("assets/images/ic_coin.png")),
                                Text("1000",style: TextStyle(fontSize: 19,color: Colors.white),),
                              ],
                            )),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.75,
                            margin: EdgeInsets.fromLTRB(15, 12, 15, 0),
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
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,size: 40,)),

                          CircleAvatar(
                            radius: 23,
                            child: Image.asset("assets/images/profile_logo.png"),),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      margin: EdgeInsets.only(left: 8),
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
                                  borderRadius: BorderRadius.circular(36)),

                              child: Text(recentSearch[index]),
                            );

                          }),
                    ),


                  ],
                ),
              ),
            ),

            PropertyListItem(),
          ],
        ),


    );
  }
}
