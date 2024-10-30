import 'package:bookly_app/Features/home/presentation/views/widgets/copy_books_List_view.dart';
import 'package:bookly_app/consts.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CopyBooksListViewSection extends StatelessWidget {
  const CopyBooksListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text('You can also like',
          style: Styles.textStyle14.copyWith(
           fontFamily: kMontserratSemiBold,
           fontWeight: FontWeight.w600,
          ),
         ),
         const SizedBox(height: 16,),
      
          const CopyBooksListView()
      ],
    );
  }
}