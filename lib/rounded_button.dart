import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0
      ),
      elevation: 0.0,
      child: Icon(icon, color: Colors.white,),
      onPressed: onPressed,
    );
  }
}