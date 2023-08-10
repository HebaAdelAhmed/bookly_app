import 'package:bookly_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomButton(
          backgroundColor: Color(0xFFFFFFFF),
          textColor: Color(0xFF000000),
          text: '19.99€',
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.0),
            topLeft: Radius.circular(16.0),
          ),
        ),
        CustomButton(
          backgroundColor: Color(0xFFEF8262),
          textColor: Color(0xFFFFFFFF),
          text: 'Free preview',
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
      ],
    );
  }
}
