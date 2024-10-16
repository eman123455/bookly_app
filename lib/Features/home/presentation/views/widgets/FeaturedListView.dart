import 'package:bookly_app/Features/home/presentation/views/widgets/Featured_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8),
          child: FeaturedListViewItem(),
        );
      }),
    );
  }
}
