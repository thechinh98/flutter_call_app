import 'package:flutter/material.dart';
import 'package:flutter_call_app/constant.dart';
import 'package:flutter_call_app/screens/dial_screen/components/dial_user_pic.dart';
import 'package:flutter_call_app/size_config.dart';

class UserCallingCard extends StatelessWidget {
  const UserCallingCard({
    Key key, @required this.image,@required this.name,
  }) : super(key: key);

  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth / 2,
      child: AspectRatio(
        aspectRatio: 0.53,
        child: Container(
          color: kBackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DialUserPic(image: image, size: 112,),
              VerticalSpacing(of: 10),
              Text(name, style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),),
              VerticalSpacing(),
              Text("Calling....", style: TextStyle(
                color: Colors.white60,
              ),)
            ],
          ),
        ),
      ),
    );
  }
}