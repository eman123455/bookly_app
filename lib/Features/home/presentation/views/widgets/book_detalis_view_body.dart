
import 'package:bookly_app/Features/home/presentation/views/widgets/books_detalis_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/copy_books_List_view_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_detalis_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      slivers: [
        SliverFillRemaining(
        child: Column(
        children: [
          SafeArea(child: CustomBookDetalisAppBar()),
          BookDetalisSection(),
          CopyBooksListViewSection()            
        ],
      ),
        )
      ],
    );
  }
}




