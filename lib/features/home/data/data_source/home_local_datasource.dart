


import 'package:bookly_app/core/utils/constants.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource{
  List<BookEntity> fetchFeatureBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFeatureBooks() {
    var box = Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();

  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var box = Hive.box<BookEntity>(kNewestBooks);
    return box.values.toList();
  }

}

