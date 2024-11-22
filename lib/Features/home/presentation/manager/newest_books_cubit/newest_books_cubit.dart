import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> getNewestBooks() async {
    emit(NewestBooksLoding());
    var data = await homeRepo.fetchNewBook();
    data.fold((fail) {
      //object from Failure class
      emit(NewestBooksFailure(errmsg: fail.errmsg));
    }, (books) { 
      emit(NewestBookssuccessful(books: books));
    });
  }
}
