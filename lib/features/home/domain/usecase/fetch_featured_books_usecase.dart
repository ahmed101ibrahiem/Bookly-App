

import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_case/use_case.dart';
import '../entities/book_entity.dart';
import '../repos/home_repos.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>,NoParam> {
  final HomeRepo homeRepo;
  FetchFeaturedBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param])async {
    // more code or some permission if there
    return await homeRepo.fetchFeaturedBooks();
  }


}
