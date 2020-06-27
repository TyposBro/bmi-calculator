import 'package:flutter/material.dart';
import "../global/constants.dart";

class BmiButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;

  BmiButton({
    @required this.buttonText,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttonText,
          style: kLargeButtonStyle,
        )),
        margin: EdgeInsets.only(top: 10),
        // padding: EdgeInsets.only(bottom: 20.0),
        color: kButtomContainerColor,
        height: kButtonHeight,
        width: double.infinity,
      ),
    );
  }
}

// () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ResultPage(),
//           ),
//         );
//       }
