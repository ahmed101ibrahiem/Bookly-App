
import 'package:bookly_app/features/home/domain/usecase/fetch_newest_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'newest_books_state.dart';

class FeaturedBookCubit extends Cubit<NewestBookState>{
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  FeaturedBookCubit({required this.fetchNewestBooksUseCase}):super(NewestBookInitial());

  Future<void> getFeaturedData()async{
    emit(NewestBookLoading());
    var response = await fetchNewestBooksUseCase.call();
    response.fold((failure) {
      emit(NewestBookError(failure.message));
    }, (books) {
      emit(NewestBookSuccess(books));
    });
  }
}