import 'package:bookly_app/Features/home/data/repo/home_repo_implement.dart';
import 'package:bookly_app/core/utils/api_server.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<ApiServer>(
    ApiServer(
        dio: Dio(),
      ),
  );
  getIt.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(
      apiServer: getIt.get<ApiServer>()
    ),
  );
}
