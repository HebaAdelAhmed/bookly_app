import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/styles/styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_details_app_bar.dart';
import 'featured_list_view_item.dart';
import 'you_can_also_like_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.8,
              child: const CustomBookImage(),
            ),
            const SizedBox(height: 26,),
            Text('The Jungle Book' , style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),),
            const SizedBox(height: 4,),
            Text('Rudyard Kipling' , style: Styles.textStyle18.copyWith(color: greyColor707070, fontStyle: FontStyle.italic),),
            const SizedBox(height: 18,),
            const BookRating(),
            const SizedBox(height: 37,),
            const BookAction(),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('You can also like' , style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700),),
              ],
            ),
            const SizedBox(height: 16,),
            const YouCanAlsoLikeListView(),
            const SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
