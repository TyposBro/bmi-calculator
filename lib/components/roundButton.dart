import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  RoundIconButton({@required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: RawMaterialButton(
        elevation: 6.0,
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        onPressed: onPress,
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
        child: Icon(icon),
      ),
    );
  }
}
