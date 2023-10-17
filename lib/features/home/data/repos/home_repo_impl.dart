


import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/data_source/home_local_datasource.dart';
import 'package:bookly_app/features/home/data/data_source/home_remote_datasource.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repos/home_repos.dart';
import 'package:dartz/dartz.dart';

class HomeReposImpl extends HomeRepo{
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;
  HomeReposImpl({required this.homeLocalDataSource,required this.homeRemoteDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async{
   try {
     List<BookEntity> books;
       books = homeLocalDataSource.fetchFeatureBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchFeatureBooks();
      return right(books);
    }catch(e){
     return left(Failure());
   }
  }


  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async{
    try{
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewestBooks();
      if(books.isNotEmpty){
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    }catch(e){
      return left(Failure());
    }
  }
}