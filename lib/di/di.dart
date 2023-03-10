import 'package:bloc_sample/features/add_anime/cubit/add_anime_cubit.dart';
import 'package:bloc_sample/features/anime/cubit/anime_cubit.dart';
import 'package:bloc_sample/features/anime/repo/anime_repo.dart';
import 'package:bloc_sample/features/auth/cubit/login_cubit.dart';
import 'package:bloc_sample/features/auth/repo/auth_repo.dart';
import 'package:bloc_sample/service/api_client.dart';
import 'package:bloc_sample/service/api_provider.dart';
import 'package:bloc_sample/utils/common_utils/theme/change_theme_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void initializeDependencyInjection() {

  getIt.registerLazySingleton(() => ApiClient());
  getIt.registerLazySingleton(() => AppThemeCubit());
  getIt.registerLazySingleton(() => ApiHelper(locate<ApiClient>()));

  getIt.registerFactory(() => AddAnimeCubit());
  getIt.registerFactory(() => AnimeRepo(locate<ApiHelper>()));
  getIt.registerFactory(() => AnimeCubit(locate<AnimeRepo>()));

  getIt.registerFactory(() => AuthRepo(locate<ApiHelper>()));
  getIt.registerFactory(() => LoginCubit(locate<AuthRepo>()));

}

locate<T extends Object>({String? instanceName}) =>
    instanceName == null ? getIt.get<T>() : getIt.get<T>(instanceName: instanceName);

