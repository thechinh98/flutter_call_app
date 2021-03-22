import 'package:flutter/material.dart';
import 'package:flutter_call_app/components/rounded_button.dart';
import 'package:flutter_call_app/constant.dart';
import 'package:flutter_call_app/screens/dial_screen/components/dial_button.dart';
import 'package:flutter_call_app/screens/dial_screen/components/dial_user_pic.dart';
import 'package:flutter_call_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Anna wiliams",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white),
            ),
            Text(
              "Calling...",
              style: TextStyle(color: Colors.white60),
            ),
            VerticalSpacing(),
            DialUserPic(size: 192, image: "assets/images/calling_face.png"),
            Spacer(),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                DialButton(
                  text: "Audio",
                  iconSrc: "assets/icons/Icon Mic.svg",
                  press: () {},
                ),
                DialButton(
                  text: "Microphone",
                  iconSrc: "assets/icons/Icon Volume.svg",
                  press: () {},
                ),
                DialButton(
                  text: "Video",
                  iconSrc: "assets/icons/Icon Video.svg",
                  press: () {},
                ),
                DialButton(
                  text: "Message",
                  iconSrc: "assets/icons/Icon Message.svg",
                  press: () {},
                ),
                DialButton(
                  text: "Add contact",
                  iconSrc: "assets/icons/Icon User.svg",
                  press: () {},
                ),
                DialButton(
                  text: "Voice mail",
                  iconSrc: "assets/icons/Icon Voicemail.svg",
                  press: () {},
                ),
              ],
            ),
            VerticalSpacing(),
            RoundedButton(color: kRedColor, iconColor: Colors.white, iconSrc: "assets/icons/call_end.svg", press: () {})
          ],
        ),
      ),
    );
  }
}

