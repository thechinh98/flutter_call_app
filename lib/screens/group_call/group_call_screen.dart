import 'package:flutter/material.dart';
import 'package:flutter_call_app/components/rounded_button.dart';
import 'package:flutter_call_app/constant.dart';
import 'package:flutter_call_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';

class GroupCallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(icon: SvgPicture.asset("assets/icons/Icon Back.svg"), onPressed: () {},),
        actions: [
          IconButton(icon: SvgPicture.asset("assets/icons/Icon User.svg", height: 24,), onPressed: () {})
        ],
      ),
      body: Body(),
      bottomNavigationBar: buildCustomNavBar(),
    );
  }

  Container buildCustomNavBar() {
    return Container(
      color: kBackgroundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              RoundedButton(
                  size: 48,
                  color: kRedColor,
                  iconColor: Colors.white,
                  iconSrc: "assets/icons/Icon Close.svg",
                  press: () {}),
              Spacer(flex: 3 ,),
              RoundedButton(
                  size: 48,
                  color: Color(0xFF2C3840),
                  iconColor: Colors.white,
                  iconSrc: "assets/icons/Icon Volume.svg",
                  press: () {}),
              Spacer(flex: 1 ,),
              RoundedButton(
                  size: 48,
                  color: Color(0xFF2C3840),
                  iconColor: Colors.white,
                  iconSrc: "assets/icons/Icon Mic.svg",
                  press: () {}),
              Spacer(flex: 1 ,),
              RoundedButton(
                  size: 48,
                  color: Color(0xFF2C3840),
                  iconColor: Colors.white,
                  iconSrc: "assets/icons/Icon Video.svg",
                  press: () {}),
              Spacer(flex: 1 ,),
              RoundedButton(
                  size: 48,
                  color: Color(0xFF2C3840),
                  iconColor: Colors.white,
                  iconSrc: "assets/icons/Icon Repeat.svg",
                  press: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
