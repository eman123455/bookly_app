import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;

  Future<void> getFeatureBooks() async {
    emit(FeatureBooksLoading());
    final data = await homeRepo.fetchFeaturedBooks();
    data.fold((failure) {
      emit(FeatureBooksfailure(errmsg: failure.errmsg));
    }, (books) {
      emit(FeatureBooksSuccessful(booksList: books));
    });
  }
}
