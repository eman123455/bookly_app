import 'package:bookly_app/Features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_server.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  ApiServer apiServer = new ApiServer();
  @override
  Future<Either<Failure, List<Bookmodel>>> fetchNewBook() async {
    try {
      var data = await apiServer.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=programming');
      List<Bookmodel> bookList = [];
      for (var item in data['items']) {
        bookList.add(Bookmodel.fromJson(item));
      }

      return right(bookList);
    } on Exception catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedBooks() {
    // TODO: implement fetchNewBook
    throw UnimplementedError();
  }
}
