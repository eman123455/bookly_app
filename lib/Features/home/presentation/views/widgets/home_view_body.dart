import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.symmetric(horizontal: 26,vertical: 40),
      child:   Column(
        children: [
           CustomAppBar(),
          CustomListViewItem(),
        ],
      ),
    );
  }
}

