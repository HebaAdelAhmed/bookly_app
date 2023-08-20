import 'package:flutter/material.dart';

import 'search_result_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const SearchResultListViewItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 15,),
      itemCount: 10,
    );
  }
}