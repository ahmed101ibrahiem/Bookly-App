

import '../../../domain/entities/book_entity.dart';

abstract class FeaturedBookState{

}

class FeaturedBookInitial extends FeaturedBookState{}
class FeaturedBookLoading extends FeaturedBookState{}
class FeaturedBookSuccess extends FeaturedBookState{
  final List<BookEntity> books;
  FeaturedBookSuccess(this.books);
}
class FeaturedBookError extends FeaturedBookState{
  final String message;

  FeaturedBookError(this.message);
}
