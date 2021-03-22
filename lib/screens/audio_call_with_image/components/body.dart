import 'package:flutter/material.dart';
import 'package:flutter_call_app/constant.dart';
import 'package:flutter_call_app/screens/audio_call_with_image/components/button_field.dart';
import 'package:flutter_call_app/screens/audio_call_with_image/components/name_field.dart';
import 'package:flutter_call_app/size_config.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset("assets/images/full_image.png", fit: BoxFit.cover),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NameField(),
                Text("Incoming 00:01".toUpperCase(),
                    style: TextStyle(color: Colors.white54)),
                Spacer(),
                ButtonField(),
              ],
            ),
          ),
        )
      ],
    );
  }
}



