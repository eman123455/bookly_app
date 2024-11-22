import 'package:bookly_app/Features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_server.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  ApiServer apiServer =  ApiServer();
  @override
  Future<Either<Failure, List<Bookmodel>>> fetchNewBook() async {
    try {
      var data = await apiServer.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
      List<Bookmodel> bookList = [];
      for (var item in data['items']) {
        bookList.add(Bookmodel.fromJson(item));
      }

      return right(bookList);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure(errmsg: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> fetchFeaturedBooks()async {
    try {
      var data = await apiServer.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=programming');
      List<Bookmodel> bookList = [];
      for (var item in data['items']) {
        bookList.add(Bookmodel.fromJson(item));
      }

      return right(bookList);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure(errmsg: e.toString()));
    }
  }

  
  }

