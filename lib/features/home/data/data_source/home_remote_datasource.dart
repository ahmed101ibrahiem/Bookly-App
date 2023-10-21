

import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/constants.dart';
import '../../../../core/utils/functions/save_books.dart';
import '../../domain/entities/book_entity.dart';
import '../models/my_data_model/book_model.dart';

abstract class HomeRemoteDataSource{
  Future<List<BookEntity>> fetchFeatureBooks({required int pageNumber});
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource{
  final ApiService apiService;
  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeatureBooks({required int pageNumber}) async{
   final Map<String,dynamic> data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber*10}&maxResults=20');
   List <BookEntity> books= [];
   for(var bookMap in data['items']){
     books.add(BookModel.fromJson(bookMap));
   }
   saveBooksData(books,kFeaturedBox);
   return books;
  }


  @override
  Future<List<BookEntity>> fetchNewestBooks() async{
    var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=learn');
    List<BookEntity> books = [];
    for(var bookMap in data['items']){
      books.add(BookModel.fromJson(bookMap));
    }
    saveBooksData(books, kNewestBooks);
    print(books);
    return books;
  }
}