import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  const NameField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Jemmy \nWiliams",
      style: Theme.of(context)
          .textTheme
          .headline3
          .copyWith(color: Colors.white),
    );
  }
}
