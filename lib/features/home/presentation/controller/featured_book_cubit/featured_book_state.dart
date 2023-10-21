

import '../../../domain/entities/book_entity.dart';

abstract class FeaturedBookState{

}

class FeaturedBookInitial extends FeaturedBookState{}
class FeaturedBookLoading extends FeaturedBookState{}
class FeaturedBookPaginationLoading extends FeaturedBookState{}
class FeaturedBookPaginationError extends FeaturedBookState{
  final String message;

  FeaturedBookPaginationError(this.message);
}

class FeaturedBookSuccess extends FeaturedBookState{
  final List<BookEntity> books;
  FeaturedBookSuccess(this.books);
}
class FeaturedBookError extends FeaturedBookState{
  final String message;

  FeaturedBookError(this.message);
}
