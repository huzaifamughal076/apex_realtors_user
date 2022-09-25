import 'package:flutter/material.dart';

class PropertyListItem extends StatefulWidget {
  const PropertyListItem({Key? key}) : super(key: key);

  @override
  State<PropertyListItem> createState() => _PropertyListItemState();
}

class _PropertyListItemState extends State<PropertyListItem> {

  String amount = "4,500,500";


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
        height: MediaQuery.of(context).size.height,
        child: GridView.count(
          shrinkWrap: true,
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(10, (index) {

            return Container(
              margin: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(31),),

              child: Column(
                children: [
                  ClipRRect(
                    borderRadius:BorderRadius.only(topLeft: Radius.circular(31),topRight: Radius.circular(31)),
                    child: Image.asset("assets/images/download.jpg" ,height: 90,fit: BoxFit.cover,),
                  ),
                  Divider(
                    color: Colors.black12,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                      child: Text("Price:"+ amount,maxLines: 1,overflow: TextOverflow.ellipsis,)),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Text("This house is for salessssssssssssssss",maxLines: 2,overflow: TextOverflow.ellipsis,)),

                ],
              ),

            );
          }),
        ),
      );




  }
}
