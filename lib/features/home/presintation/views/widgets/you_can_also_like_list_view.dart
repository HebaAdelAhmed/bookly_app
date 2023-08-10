import 'package:flutter/material.dart';

import 'featured_list_view_item.dart';

class YouCanAlsoLikeListView extends StatelessWidget {
  const YouCanAlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 5.1,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 8.0,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(),
        itemCount: 10,
      ),
    );
  }
}