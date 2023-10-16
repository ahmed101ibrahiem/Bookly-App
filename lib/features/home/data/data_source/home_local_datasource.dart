


import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource{
  List<BookEntity> fetchFeatureBooks();
  List<BookEntity> fetchNewestBooks();
}