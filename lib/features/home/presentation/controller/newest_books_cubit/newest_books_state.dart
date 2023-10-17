


import '../../../domain/entities/book_entity.dart';

abstract class NewestBookState{

}

class NewestBookInitial extends NewestBookState{}
class NewestBookLoading extends NewestBookState{}
class NewestBookSuccess extends NewestBookState{
  final List<BookEntity> books;
  NewestBookSuccess(this.books);
}
class NewestBookError extends NewestBookState{
  final String message;
  NewestBookError(this.message);
}
