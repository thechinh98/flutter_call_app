import 'package:flutter/material.dart';
import 'package:flutter_call_app/components/rounded_button.dart';
import 'package:flutter_call_app/constant.dart';

class ButtonField extends StatelessWidget {
  const ButtonField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundedButton(
          press: () {},
          color: Colors.white,
          iconColor: Colors.black,
          iconSrc: "assets/icons/Icon Mic.svg",
        ),
        RoundedButton(
          press: () {},
          color: kRedColor,
          iconColor: Colors.white,
          iconSrc: "assets/icons/call_end.svg",
        ),
        RoundedButton(
          press: () {},
          color: Colors.white,
          iconColor: Colors.black,
          iconSrc: "assets/icons/Icon Volume.svg",
        ),
      ],
    );
  }
}
