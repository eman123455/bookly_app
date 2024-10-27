import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/consts.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width*0.5,
                    child: const Text('Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                     style: Styles.textStyle20,
                    ),
                  ),
                  const SizedBox(height: 3,),
                   Text('J.K. Rowling',
                  style: Styles.textStyle14.copyWith(fontFamily: kMontserratMedium),
                  ),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text('19.99 €',
                      style: Styles.textStyle20.copyWith(fontFamily: kMontserratBold),
                      ),
                      const Spacer(),
                    const   BookRating()
                    ],
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}

