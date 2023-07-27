import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/app_constant.dart';
import '../../../../../core/utils/styles/styles.dart';
import 'book_rating.dart';

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
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.6,
                    child: const Text(
                      'Harry Potter and the Goblet of Fire' ,
                      style: Styles.textStyle20,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99 €' ,
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

