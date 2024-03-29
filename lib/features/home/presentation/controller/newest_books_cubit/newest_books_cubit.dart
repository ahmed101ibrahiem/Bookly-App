
import 'package:bookly_app/features/home/domain/usecase/fetch_newest_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'newest_books_state.dart';

class NewestBookCubit extends Cubit<NewestBookState>{
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  NewestBookCubit({required this.fetchNewestBooksUseCase}):super(NewestBookInitial());

  Future<void> getNewestData()async{
    emit(NewestBookLoading());
    var response = await fetchNewestBooksUseCase.call();
    response.fold((failure) {
      emit(NewestBookError(failure.message));
    }, (books) {
      emit(NewestBookSuccess(books));
    });
  }
}