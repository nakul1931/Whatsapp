import 'package:Whatsapp/constants.dart';
import 'package:flutter/material.dart';

class chatData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 80,
      margin: EdgeInsets.all(3.0),
      color: mainColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Name",style:childTextStyle),
                Row(
                  children: <Widget>[
                    Icon(Icons.check,color: iconColor,),
                    Text("Message is displayed here",style: childTextStyle,)
                  ],
                )
              ],
            ),
          ),
          Container()
        ],
      ),
    );
  }
}
