part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBookssuccessful extends NewestBooksState {
  final List<Bookmodel> books;

  const NewestBookssuccessful({required this.books});
  
}

final class NewestBooksFailure extends NewestBooksState {
  final String errmsg;

  const NewestBooksFailure({required this.errmsg});
}

final class NewestBooksLoding extends NewestBooksState {}
