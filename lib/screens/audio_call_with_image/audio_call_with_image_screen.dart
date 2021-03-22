import 'package:flutter/material.dart';
import 'package:flutter_call_app/size_config.dart';

import 'components/body.dart';

class AudioCallWithImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
