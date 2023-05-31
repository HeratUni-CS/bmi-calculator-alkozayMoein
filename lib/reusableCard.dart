import 'package:flutter/material.dart';


class reusableCard extends StatelessWidget {
  reusableCard({required this.color, this.cardChild, this.onpress});

  final Color color;
  final Widget? cardChild;
  final Function? onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress!(),
      child: Container(
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(11.0),
        ),
      ),
    );
  }
}