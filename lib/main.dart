import 'package:Whatsapp/chats.dart';
import 'package:Whatsapp/story.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'appBar.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/home': (context) => HomeScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/story': (context) => Story(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: mainColor,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              foregroundColor: mainColor, backgroundColor: mainColor)),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
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
            children: <Widget>[
              appBar(),
              chatData(),
            ],
          ),
        ),
      ),
    );
  }
}
