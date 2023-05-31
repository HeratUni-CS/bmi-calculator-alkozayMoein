import 'package:bmi-calculator-alkozayMoein/reusableCard.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'calculatebtn.dart';



class Result extends StatelessWidget {

  Result({required this.BMI,required this.condition,required this.advice});

  final String BMI;
  final String condition;
  final String advice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('IBM Calculator'),
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
                      'Your Result',
                      style: kTitleColor,
                    )
                )
            ),
            Expanded(
                flex: 5,
                child: reusableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        condition.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(
                        BMI,
                        style: kBMIstyle,
                      ),
                      Text(
                        advice,
                        textAlign: TextAlign.center,
                        style: kBodystyle,
                      )
                    ],
                  ),
                )
            ),
            CalculateButton(label: 'RE-CALCULATE', onTap: (){
              Navigator.pop(context);
            })
          ],
        )
    );
  }
}