import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bmiButton.dart';
import 'package:bmi_calculator/components/reuseableCard.dart';
import 'package:bmi_calculator/global/constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiDesc,
      @required this.bmiIndex,
      @required this.bmiText});

  final String bmiIndex;
  final String bmiText;
  final String bmiDesc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RESULTS"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              color: kAactiveCardColor,
              myChild: DescriptionCard(
                bmiDesc: bmiDesc,
                bmiIndex: bmiIndex,
                bmiText: bmiText,
              ),
            ),
          ),
          Expanded(
              child: BmiButton(
                  buttonText: "RE-CALCULATE",
                  onTap: () {
                    Navigator.pop(context);
                  }))
        ],
      ),
    );
  }
}

class DescriptionCard extends StatelessWidget {
  DescriptionCard(
      {@required this.bmiDesc,
      @required this.bmiIndex,
      @required this.bmiText});

  final String bmiIndex;
  final String bmiText;
  final String bmiDesc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          bmiText.toUpperCase(),
          style: kResultTextStyle,
        ),
        Text(bmiIndex, style: kBmiTextStyle),
        Text(
          bmiDesc,
          style: kBmiDescStyle,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
