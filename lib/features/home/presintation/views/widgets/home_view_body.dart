import 'package:bookly_app/core/utils/constants/app_constant.dart';
import 'package:bookly_app/core/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';
import 'featured_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height/3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.kHorizontalPadding),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1.3/2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://res.cloudinary.com/dukp6c7f7/image/upload/f_auto,fl_lossy,q_auto/s3-ghost//2018/11/Coders-at-Work.jpg',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
