
import 'package:bookly_app/Features/home/data/repo/home_repo_implement.dart';
import 'package:bookly_app/Features/home/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

import 'package:bookly_app/consts.dart';

import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/utils/setup_locator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:google_fonts/google_fonts.dart';

void main() {
  setUp();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeatureBooksCubit(getIt.get<HomeRepoImplement>()),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImplement>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme: GoogleFonts.montserratAlternatesTextTheme(
                ThemeData.dark().textTheme)),
      ),
    );
  }
}
