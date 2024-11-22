part of 'feature_books_cubit.dart';

sealed class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksInitial extends FeatureBooksState {}

final class FeatureBooksLoading extends FeatureBooksState {}

final class FeatureBooksSuccessful extends FeatureBooksState {
  final List<Bookmodel> booksList;

const FeatureBooksSuccessful({required this.booksList});
}

final class FeatureBooksfailure extends FeatureBooksState {
  final String errmsg;

  const FeatureBooksfailure({required this.errmsg});
}
