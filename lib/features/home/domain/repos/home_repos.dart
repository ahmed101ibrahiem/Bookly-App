import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '../entities/book_entity.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<BookEntity>>> fetchFeaturedBooks(
      {required int pageNumber});
  Future <Either<Failure,List<BookEntity>>> fetchNewestBooks();
}