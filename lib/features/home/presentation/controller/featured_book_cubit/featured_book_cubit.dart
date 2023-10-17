


import 'package:bookly_app/features/home/presentation/controller/featured_book_cubit/featured_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecase/fetch_featured_books_usecase.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState>{
  final FetchFeaturedBooksUseCase featuredBooksUseCase;
  FeaturedBookCubit({required this.featuredBooksUseCase}):super(FeaturedBookInitial());

 Future<void> getFeaturedData()async{
   emit(FeaturedBookLoading());
   var response = await featuredBooksUseCase.call();
   response.fold((failure) {
     emit(FeaturedBookError(failure.message));
   }, (books) {
     emit(FeaturedBookSuccess(books));
   });
 }
}