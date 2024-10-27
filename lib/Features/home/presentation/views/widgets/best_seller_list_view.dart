import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7/4,
            child: Container(
              decoration:const  BoxDecoration(
               image: DecorationImage(
                image:AssetImage(AssetsData.test)
                )
              ), 
            )
            ),
        ],
      ),
    );
  }
}