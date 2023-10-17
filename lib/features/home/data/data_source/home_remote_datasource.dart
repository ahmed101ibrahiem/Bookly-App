

import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import '../../../../core/utils/functions/save_books.dart';
import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource{
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource{
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeatureBooks() async{
   var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=programming');
   List <BookEntity> books= [];
   for(var bookMap in data['items']){
     books.add(BookModel.fromJson(bookMap));
   }
   saveBooksData(books,kFeaturedBox);
   return books;
  }


  @override
  Future<List<BookEntity>> fetchNewestBooks() async{
    var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
    List<BookEntity> books = [];
    for(var bookMap in data['items']){
      books.add(BookModel.fromJson(bookMap));
    }
    saveBooksData(books, kNewestBooks);
    return books;
  }
}