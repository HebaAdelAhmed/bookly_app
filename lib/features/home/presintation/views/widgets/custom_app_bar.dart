import 'package:bookly_app/core/utils/constants/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/constants/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.kHorizontalPadding, vertical: AppConstants.kVerticalPadding),
        child: Row(
          children: [
            SvgPicture.asset(
              AssetsData.logo,
            ),
            const Spacer(),
            IconButton(
              onPressed: (){},
              icon: SvgPicture.asset(
                AssetsData.searchIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
