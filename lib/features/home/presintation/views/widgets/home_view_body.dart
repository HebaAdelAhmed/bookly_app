import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/app_constant.dart';
import '../../../../../core/utils/styles/styles.dart';
import 'best_seller_list_view.dart';
import 'custom_home_app_bar.dart';
import 'custom_books_image.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.kHorizontalPadding,
                  vertical: AppConstants.kVerticalPadding,
                ),
                child: Text('Best Seller' , style: Styles.textStyle18,),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}


