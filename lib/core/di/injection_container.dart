import 'package:dio/dio.dart';
import '../../app_exports.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  await coreDependencies();
  await authDependencies();
  await dashboardDependencies();
  await allComplaintsDependencies();
  await complaintDetailsDependencies();
  await indoorComplaintsDependencies();
  await outdoorComplaintsDependencies();
  await createComplaintDependencies();
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
  sl.registerLazySingleton<DeleteComplaintRemoteUsecase>(
    () => DeleteComplaintRemoteUsecase(repository: sl()),
  );

  sl.registerLazySingleton<DeleteSelectedComplaintsUsecase>(
    () => DeleteSelectedComplaintsUsecase(repository: sl()),
  );
  // ViewModel
  sl.registerFactory<AllComplaintsViewModel>(
    () => AllComplaintsViewModel(
      allComplaintsUsecase: sl(),
      deleteComplaintRemoteUsecase: sl(),
      deleteSelectedComplaintsUsecase: sl(),
    ),
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

  sl.registerLazySingleton<AddNewMessageUsecase>(
    () => AddNewMessageUsecase(repository: sl()),
  );
  sl.registerLazySingleton<SetComplaintDurationUsecase>(
    () => SetComplaintDurationUsecase(repository: sl()),
  );
  sl.registerLazySingleton<GetMessagesListUsecase>(
    () => GetMessagesListUsecase(repository: sl()),
  );
  sl.registerLazySingleton<GetEmployeesListUsecase>(
    () => GetEmployeesListUsecase(repository: sl()),
  );
  sl.registerLazySingleton<ChangeComplaintStatusUsecase>(
    () => ChangeComplaintStatusUsecase(repository: sl()),
  );
  sl.registerLazySingleton<GetComplaintBillsListUsecase>(
    () => GetComplaintBillsListUsecase(repository: sl()),
  );
  sl.registerLazySingleton<GetComplaintsPropertyListUsecase>(
    () => GetComplaintsPropertyListUsecase(repository: sl()),
  );
  sl.registerLazySingleton<GetComplaintBillingTypesDropdownUsecase>(
    () => GetComplaintBillingTypesDropdownUsecase(repository: sl()),
  );
  sl.registerLazySingleton<AddComplaintBillUsecase>(
    () => AddComplaintBillUsecase(repository: sl()),
  );
  sl.registerLazySingleton<UpdateComplaintBillUsecase>(
    () => UpdateComplaintBillUsecase(repository: sl()),
  );
  sl.registerLazySingleton<DeleteComplaintBillUsecase>(
    () => DeleteComplaintBillUsecase(repository: sl()),
  );

  // ViewModel
  sl.registerFactory<ComplaintDetailsViewModel>(
    () => ComplaintDetailsViewModel(
      complaintDetailsUsecase: sl(),
      addNewMessageUsecase: sl(),
      setComplaintDurationUsecase: sl(),
      getMessagesListUsecase: sl(),
      getEmployeesListUsecase: sl(),
      changeComplaintStatusUsecase: sl(),
      getComplaintBillsListUsecase: sl(),
      getComplaintsPropertyListUsecase: sl(),
      getComplaintBillingTypesDropdownUsecase: sl(),
      addComplaintBillUsecase: sl(),
      updateComplaintBillUsecase: sl(),
      deleteComplaintBillUsecase: sl(),
    ),
  );
}

/// AllComplaints Feature Dependencies
Future<void> indoorComplaintsDependencies() async {
  // DataSource
  sl.registerLazySingleton<IRemoteIndoorComplaintsDataSource>(
    () => RemoteIndoorComplaintsDataSourceImpl(dioHelper: sl()),
  );

  // Repository
  sl.registerLazySingleton<IIndoorComplaintsRepository>(
    () => IndoorComplaintsRepositoryImpl(dataSource: sl()),
  );

  // UseCase
  sl.registerLazySingleton<IndoorComplaintsUsecase>(
    () => IndoorComplaintsUsecase(repository: sl()),
  );

  // ViewModel
  sl.registerFactory<IndoorComplaintsViewModel>(
    () => IndoorComplaintsViewModel(
      indoorComplaintsUsecase: sl(),
      deleteComplaintRemoteUsecase: sl(),
      deleteAllComplaintsRemoteUsecase: sl(),
    ),
  );
}

/// AllComplaints Feature Dependencies
Future<void> outdoorComplaintsDependencies() async {
  // DataSource
  sl.registerLazySingleton<IRemoteOutdoorComplaintsDataSource>(
    () => RemoteOutdoorComplaintsDataSourceImpl(dioHelper: sl()),
  );

  // Repository
  sl.registerLazySingleton<IOutdoorComplaintsRepository>(
    () => OutdoorComplaintsRepositoryImpl(dataSource: sl()),
  );

  // UseCase
  sl.registerLazySingleton<OutdoorComplaintsUsecase>(
    () => OutdoorComplaintsUsecase(repository: sl()),
  );

  // ViewModel
  sl.registerFactory<OutdoorComplaintsViewmodel>(
    () => OutdoorComplaintsViewmodel(
      outudoorComplaintsUsecase: sl(),
      deleteComplaintRemoteUsecase: sl(),
      deleteSelectedComplaintsUsecase: sl(),
    ),
  );
}

/// CreateComplaint Feature Dependencies
Future<void> createComplaintDependencies() async {
  // DataSource
  sl.registerLazySingleton<IRemoteCreateComplaintDataSource>(
    () => RemoteCreateComplaintDataSourceImpl(dioHelper: sl()),
  );

  // Repository
  sl.registerLazySingleton<ICreateComplaintRepository>(
    () => CreateComplaintRepositoryImpl(dataSource: sl()),
  );

  // UseCase
  sl.registerLazySingleton<CreateComplaintUsecase>(
    () => CreateComplaintUsecase(repository: sl()),
  );
  sl.registerLazySingleton<GetBlockListRemoteUsecase>(
    () => GetBlockListRemoteUsecase(repository: sl()),
  );
  sl.registerLazySingleton<GetStreetListRemoteUsecase>(
    () => GetStreetListRemoteUsecase(repository: sl()),
  );
  sl.registerLazySingleton<GetPlotListRemoteUsecase>(
    () => GetPlotListRemoteUsecase(repository: sl()),
  );
  sl.registerLazySingleton<GetResidentOwnerRemoteUsecas>(
    () => GetResidentOwnerRemoteUsecas(repository: sl()),
  );
  sl.registerLazySingleton<GetComplaintTypesListRemoteUsecase>(
    () => GetComplaintTypesListRemoteUsecase(repository: sl()),
  );
  // ViewModel
  sl.registerFactory<CreateComplaintViewModel>(
    () => CreateComplaintViewModel(
      createComplaintUsecase: sl(),
      getBlockListRemoteUsecase: sl(),
      getStreetListRemoteUsecase: sl(),
      getPlotListRemoteUsecase: sl(),
      getResidentOwnerRemoteUsecase: sl(),
      getComplaintTypesListRemoteUsecase: sl(),
    ),
  );
}
