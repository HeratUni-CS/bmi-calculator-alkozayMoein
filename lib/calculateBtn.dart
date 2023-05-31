import 'package:flutter/material.dart';
import 'constants.dart';

class CalculateButton extends StatelessWidget {

  CalculateButton({required this.label,required this.onTap});

  final Function onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap(),
      child: Container(
        child: Text(
          'CALCULATE',
          style: kCalculateButton,
        ),
        color: kButtonColor,
        margin: EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}
