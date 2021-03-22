import 'package:flutter/material.dart';
import 'package:flutter_call_app/screens/audio_call_with_image/audio_call_with_image_screen.dart';
import 'package:flutter_call_app/screens/dial_screen/dial_screen.dart';
import 'package:flutter_call_app/screens/group_call/group_call_screen.dart';
import 'package:flutter_call_app/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GroupCallScreen(),
    );
  }
}

