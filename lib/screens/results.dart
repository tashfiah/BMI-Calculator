import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/Reuseable_card.dart';
import 'package:bmi_calculator/components/bottombutton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiresult,
      required this.resulttext,
      required this.advice});

  final String bmiresult;
  final String resulttext;
  final String advice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.bottomCenter,
            child: Text(
              'Your Result',
              style: kTitleStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: Reuseable_Card(
                onPress: () {},
                colour: kCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resulttext.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiresult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      advice,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )),
          bottombutton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
