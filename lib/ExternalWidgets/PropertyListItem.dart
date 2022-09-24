import 'package:flutter/material.dart';

class PropertyListItem extends StatefulWidget {
  const PropertyListItem({Key? key}) : super(key: key);

  @override
  State<PropertyListItem> createState() => _PropertyListItemState();
}

class _PropertyListItemState extends State<PropertyListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 264,
      height: 226,

      decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(31),),

      child: Column(
        children: [
          ClipRRect(
            borderRadius:BorderRadius.only(topLeft: Radius.circular(31),topRight: Radius.circular(31)),
            child: Image.asset("assets/images/download.jpg",width: 264,height: 150,fit: BoxFit.fill,),
          ),

          Container(width: double.infinity,
          height: 0.5,
            color: Colors.black12,
          ),

          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text("Price: 4,500,500")),
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text("This house is for sale",maxLines: 2,overflow: TextOverflow.ellipsis,)),

        ],
      ),
      
    );
  }
}
