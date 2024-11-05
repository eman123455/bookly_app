import 'package:bookly_app/Features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
 Future<Either<Failure,List<Bookmodel>>>  fetchBestSellerBook();
   Future<Either<Failure,List<Bookmodel>>> fetchFeaturedBooks();
}
