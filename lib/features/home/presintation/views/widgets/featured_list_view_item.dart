import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return AspectRatio(
      aspectRatio: 1.2/2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              'https://res.cloudinary.com/dukp6c7f7/image/upload/f_auto,fl_lossy,q_auto/s3-ghost//2018/11/Coders-at-Work.jpg',
            ),
          ),
        ),
      ),
    );
  }
}