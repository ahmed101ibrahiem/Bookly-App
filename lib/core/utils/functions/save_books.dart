


import 'package:hive/hive.dart';

import '../../../features/home/domain/entities/book_entity.dart';

// method to save data in hive
void saveBooksData(List<BookEntity> books, String boxName) {
  var box = Hive.box(boxName);
  box.addAll(books);
}
