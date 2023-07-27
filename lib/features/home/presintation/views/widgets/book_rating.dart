import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/images/star.svg',),
        const SizedBox(
          width: 6,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xFF707070),
          ),
        ),
      ],
    );
  }
}