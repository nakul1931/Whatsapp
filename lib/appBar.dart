import 'package:Whatsapp/main.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class appBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 100,
      color: mainColor,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "WhatsApp",
                  style: textStyle,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: iconColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_drop_down_circle,
                        color: iconColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                Container(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/home');
                                // Navigator.push(context, homeScreen)
                              },
                              child: Text(
                                "CHATS",
                                style: childTextStyle,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              // minRadius: 10,
                              maxRadius: 10,
                              child: Text(
                                "5",
                                style: TextStyle(color: mainColor),
                              ),
                              backgroundColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/story');
                        },
                        child: Text(
                          "STORY",
                          style: childTextStyle,
                        ),
                      ),
                      Text(
                        "CALLS",
                        style: childTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
