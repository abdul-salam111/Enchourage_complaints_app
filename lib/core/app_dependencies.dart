import 'package:get_it/get_it.dart';
import 'networks/network_manager/dio_helper.dart';
import 'theme/theme_controller.dart';
import '../features/signin/data/datasources/remote_signin_datasource.dart';
import '../features/signin/data/repository_impl/signin_repository_impl.dart';
import '../features/signin/domain/repositories/signin_repository.dart';
import '../features/signin/presentation/blocs/signin_bloc.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  // SignIn Feature Dependencies
  sl.registerLazySingleton<IRemoteSignInDataSource>(
    () => RemoteSignInDataSourceImpl(),
  );
  
  sl.registerLazySingleton<SignInRepository>(
    () => SignInRepositoryImpl(sl()),
  );
  
  sl.registerFactory<SignInBloc>(
    () => SignInBloc(sl()),
  );

  sl.registerSingleton<ThemeController>(ThemeController());
  sl.registerSingleton<DioHelper>(DioHelper());
}
