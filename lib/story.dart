import 'package:flutter/material.dart';
import 'appBar.dart';
import 'constants.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // 
        floatingActionButton: FloatingActionButton(
            onPressed: () => print("object"),
            backgroundColor: mainColor,
            child: Icon(
              Icons.camera_enhance,
              color: iconColor,
            ),
          ),
        body: Column(
          children: <Widget>[
            appBar(),
            Center(
              child: Text("Check"),
            )
          ],
        ),
      ),
    );
  }
}
