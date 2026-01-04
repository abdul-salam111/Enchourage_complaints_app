import '../../../../app_exports.dart';

class SigninBinding extends Bindings {
  @override
  void dependencies() {
    // DataSource - pass DioHelper instance
    Get.lazyPut<IRemoteSigninDataSource>(
      () => RemoteSigninDataSourceImpl(dioHelper: Get.find()),
    );

    // Repository
    Get.lazyPut<ISigninRepository>(
      () => SigninRepositoryImpl(dataSource: Get.find()),
    );

    // UseCase
    Get.lazyPut<SigninUsecase>(() => SigninUsecase(repository: Get.find()));

    // ViewModel/Controller
    Get.lazyPut<SigninViewModel>(
      () => SigninViewModel(signinUsecase: Get.find()),
    );
  }
}
