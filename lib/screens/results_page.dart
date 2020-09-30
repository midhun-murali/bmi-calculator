import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/custom_card.dart';
import '../components/custom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  final CalculatorBrain calculatorBrain;

  ResultsPage(this.calculatorBrain);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CustomCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    calculatorBrain.getResult().toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    calculatorBrain.calculateBMI(),
                    style: kBMITextStyle,
                  ),
                  Text(
                    calculatorBrain.getInterpretation(),
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          CustomButton(
            buttonText: 'CALCUALTE AGAIN',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
