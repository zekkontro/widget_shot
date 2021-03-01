import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shot_widget/shot_service.dart';
import 'package:shot_widget/shot_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.amber),
      home: ExampleShotWidget(),
    );
  }
}

class ExampleShotWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey key = GlobalKey();
    ShotService service = ShotService();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: () async {
          File file = await service.takeWidgetShot(key, "<IMAGE - PATH>");
          print(file.path);
        },
      ),
      appBar: AppBar(
        title: Text("Shot Widget package example"),
        centerTitle: true,
      ),
      body: ShotWidget(
        shotKey: key,
        child: Container(
          margin: EdgeInsets.all(40),
          alignment: Alignment.center,
          child: Text("This is a Example"),
          decoration: BoxDecoration(color: Colors.red[300]),
        ),
      ),
    );
  }
}
