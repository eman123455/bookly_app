import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/FeaturedListView.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedListView(),
          SizedBox(height: 50,),
          Text('Best Seller',
          style: Styles.textStyle18,
          ),
          SizedBox(height: 20,),
          BestSellerListView()
        ],
      ),
    );
  }
}

