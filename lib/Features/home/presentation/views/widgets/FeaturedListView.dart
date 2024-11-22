import 'package:bookly_app/Features/home/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/widgets/custom_circular_progress_indicator.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccessful) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.booksList.length,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomBookImage(
                      imgUrl: state.booksList[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                }),
          );
        } else if (state is FeatureBooksfailure) {
          return  CustomErrorWidget(errmsg: state.errmsg);
        } else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
