import 'package:bmi_calculator/buttomButton.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class resultPage extends StatelessWidget {

  resultPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: TextStyle(
                  color: KColorTextWhite,
                  fontSize: 50.0
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              color: KActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toLowerCase(),
                    style: TextStyle(
                      color: Color(0xff24d876),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100.0,
                      color: KColorTextWhite
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                      color: KColorTextWhite
                    ),
                  )
                ],
              ),
          ),
          ),
          bottomButton(text: 'RE-CALCULATE', onTap:() => Navigator.pop(context))
        ],
      ),
    );
  }
}
