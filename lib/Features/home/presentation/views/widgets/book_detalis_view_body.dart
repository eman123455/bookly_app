import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_detalis_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
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
       )
      ],
    );
  }
}

