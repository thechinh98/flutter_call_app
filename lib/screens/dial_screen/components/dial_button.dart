import 'package:flutter/material.dart';
import 'package:flutter_call_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DialButton extends StatelessWidget {
  const DialButton({
    Key key,
    this.iconSrc,
    this.text,
    this.press,
  }) : super(key: key);
  final String iconSrc;
  final String text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(120),
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20)),
        onPressed: press,
        child: Column(
          children: [
            SvgPicture.asset(
              iconSrc,
              color: Colors.white,
              height: 36,
            ),
            Text(text, style: TextStyle(color: Colors.white, fontSize: 13))
          ],
        ),
      ),
    );
  }
}
