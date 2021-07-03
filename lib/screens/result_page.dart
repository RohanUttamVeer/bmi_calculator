import 'package:bmi_calculator/components/reuseable_card.dart';
import 'package:bmi_calculator/const.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult, required this.resultText, required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'YOUR RESULT !',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
          Expanded(
              flex: 6,
              child: ReuseableCard(
                colour: kColorContainer,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      bmiResult,
                      style:
                          TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      interpretation,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),
          BottomButton(
            buttonTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
