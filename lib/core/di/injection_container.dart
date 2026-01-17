import 'package:dio/dio.dart';

import '../../app_exports.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  await coreDependencies();

  await authDependencies();
  await dashboardDependencies();
  await allComplaintsDependencies();
  await complaintDetailsDependencies();
}

Future<void> coreDependencies() async {
  sl.registerLazySingleton<Dio>(() => Dio());
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

/// Dashboard Feature Dependencies
Future<void> dashboardDependencies() async {
  // ViewModel
  sl.registerFactory<DashboardViewModel>(() => DashboardViewModel());
}

/// AllComplaints Feature Dependencies
Future<void> allComplaintsDependencies() async {
  // DataSource
  sl.registerLazySingleton<IRemoteAllComplaintsDataSource>(
    () => RemoteAllComplaintsDataSourceImpl(dioHelper: sl()),
  );

  // Repository
  sl.registerLazySingleton<IAllComplaintsRepository>(
    () => AllComplaintsRepositoryImpl(dataSource: sl()),
  );

  // UseCase
  sl.registerLazySingleton<AllComplaintsUsecase>(
    () => AllComplaintsUsecase(repository: sl()),
  );

  // ViewModel
  sl.registerFactory<AllComplaintsViewModel>(
    () => AllComplaintsViewModel(allComplaintsUsecase: sl()),
  );
}

/// ComplaintDetails Feature Dependencies
Future<void> complaintDetailsDependencies() async {
  // DataSource
  sl.registerLazySingleton<IRemoteComplaintDetailsDataSource>(
    () => RemoteComplaintDetailsDataSourceImpl(dioHelper: sl()),
  );

  // Repository
  sl.registerLazySingleton<IComplaintDetailsRepository>(
    () => ComplaintDetailsRepositoryImpl(dataSource: sl()),
  );

  // UseCase
  sl.registerLazySingleton<ComplaintDetailsUsecase>(
    () => ComplaintDetailsUsecase(repository: sl()),
  );

  // ViewModel
  sl.registerFactory<ComplaintDetailsViewModel>(
    () => ComplaintDetailsViewModel(complaintDetailsUsecase: sl()),
  );
}
