import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
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
           const SizedBox(width: 30,),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.5,
                  child: const Text('Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                   style: Styles.textStyle20,
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}