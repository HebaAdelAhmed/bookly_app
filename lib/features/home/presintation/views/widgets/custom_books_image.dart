import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/app_constant.dart';
import 'featured_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.kHorizontalPadding),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3.1,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            width: 8.0,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomBookImage(),
          itemCount: 10,
        ),
      ),
    );
  }
}

