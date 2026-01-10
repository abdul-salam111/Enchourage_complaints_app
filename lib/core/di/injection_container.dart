import 'package:dio/dio.dart';

import '../../app_exports.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  await coreDependencies();

  await authDependencies();
}

Future<void> coreDependencies() async {
  sl.registerLazySingleton<Dio>(() => getDio());
  sl.registerLazySingleton(() => DioHelper(sl()));
}

/// SignIn Feature Dependencies
Future<void> authDependencies() async {
  // DataSource
  sl.registerLazySingleton<IRemoteSigninDataSource>(
    () => RemoteSigninDataSourceImpl(dioHelper: sl()),
  );

  // Repository
  sl.registerLazySingleton<ISigninRepository>(
    () => SigninRepositoryImpl(dataSource: sl()),
  );

  // UseCase
  sl.registerLazySingleton<SigninUsecase>(
    () => SigninUsecase(repository: sl()),
  );

  // provider
  sl.registerFactory<SigninViewModel>(
    () => SigninViewModel(signinUsecase: sl()),
  );
}
