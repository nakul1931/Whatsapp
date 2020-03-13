import 'package:flutter/material.dart';

const mainColor = Color(0xFF1B735D);
const iconColor = Colors.white;
const textStyle =
    TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold);
const childTextStyle = TextStyle(fontSize: 16, color: Colors.white);

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: mainColor,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              foregroundColor: mainColor, backgroundColor: mainColor)),
      home: homeScreen(),
    );
  }
}

class homeScreen extends StatelessWidget {
  // List<Widget> = [];
  // final list = List<Widget>.;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        // onHorizontalDragStart: (){print("object")},
        onHorizontalDragStart: (details) => print("1"),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () => print("object"),
            backgroundColor: mainColor,
            child: Icon(
              Icons.chat,
              color: iconColor,
            ),
          ),
          body: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
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
                                Text(
                                  "CHATS",
                                  style: childTextStyle,
                                ),
                                Text(
                                  "STORY",
                                  style: childTextStyle,
                                ),
                                Text(
                                  "CALLS",
                                  style: childTextStyle,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
