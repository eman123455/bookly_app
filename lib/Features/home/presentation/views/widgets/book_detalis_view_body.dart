import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_detalis_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/consts.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
      const  SafeArea(child: CustomBookDetalisAppBar()),
       Padding(
         padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width*0.19),
         child: const CustomBookImage(),
       ),
       const SizedBox(height: 39,),
       Text('The Jungle Book',
       style: Styles.textStyle30.copyWith(
        fontFamily: kMontserratMedium
       ),
       ),
      
       const SizedBox(height: 5,),
       Opacity(
        opacity: 0.7,
         child: Text('Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic
          ),
         ),
       ),
  
      
     const BookRating(mainAxisAlignment: MainAxisAlignment.center,)
      ],
    );
  }
}

