import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class bottomButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const bottomButton({
    Key key,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: KBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: KBottomContainerHeight,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}