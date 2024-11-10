import 'package:bookly_app/Features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo{
  @override
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> fetchNewBook() {
    // TODO: implement fetchNewBook
    throw UnimplementedError();
  }



}