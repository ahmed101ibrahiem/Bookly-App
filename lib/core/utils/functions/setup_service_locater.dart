


import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/data_source/home_local_datasource.dart';
import 'package:bookly_app/features/home/data/data_source/home_remote_datasource.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeReposImpl>(HomeReposImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(getIt.get<ApiService>())));
}