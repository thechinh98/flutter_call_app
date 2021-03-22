import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.color,
    @required this.iconColor,
    this.size = 64,
    @required this.iconSrc,
    @required this.press,
  }) : super(key: key);
  final Color color, iconColor;
  final double size;
  final String iconSrc;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(size),
      width: getProportionateScreenWidth(size),
      child: FlatButton(
        padding: EdgeInsets.all(15/64 * size),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        color: color,
        onPressed: press,
        child: SvgPicture.asset(iconSrc, color: iconColor,),
      ),
    );
  }
}
