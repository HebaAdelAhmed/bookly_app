import 'package:flutter/material.dart';

import '../styles/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.backgroundColor, required this.textColor, required this.text, required this.borderRadius});

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          onPressed: (){

          },
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
          ),
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
