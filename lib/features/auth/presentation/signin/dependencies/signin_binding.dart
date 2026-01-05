import '../../../../../app_exports.dart';

class SigninBinding extends Bindings {
  @override
  void dependencies() {
    // DataSource - pass DioHelper instance
    Get.lazyPut<IRemoteAuthDataSource>(
      () => AuthRemoteDataSourceImpl(dioHelper: Get.find()),
    );

    // Repository
    Get.lazyPut<IAuthRepository>(
      () => AuthRepositoryImpl(dataSource: Get.find()),
    );

    // UseCase
    Get.lazyPut<SigninUsecase>(() => SigninUsecase(repository: Get.find()));

    // ViewModel/Controller
    Get.lazyPut<SigninViewModel>(
      () => SigninViewModel(signinUsecase: Get.find()),
    );
  }
}
