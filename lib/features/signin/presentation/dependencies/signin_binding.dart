import 'package:flutter_template/features/signin/domain/usecases/signin_remote_usecase.dart';
import 'package:get/get.dart';
import '../../data/datasources/signin_remote_datasource.dart';
import '../../data/repository_impl/signin_repository_impl.dart';
import '../../domain/repositories/signin_repository.dart';
import '../viewmodels/signin_viewmodel.dart';

class SigninBinding extends Bindings {
  @override
  void dependencies() {
    // DataSource
    Get.lazyPut<ISigninRemoteDataSource>(
      () => SigninRemoteDataSourceImpl(Get.find()),
    );

    // Repository
    Get.lazyPut<ISigninRepository>(
      () => SigninRepositoryImpl(dataSource: Get.find()),
    );

    Get.lazyPut<SigninRemoteUsecase>(() => SigninRemoteUsecase(Get.find()));
    // ViewModel/Controller
    Get.lazyPut<SigninViewModel>(
      () => SigninViewModel(
        repository: Get.find(),
        signinRemoteUsecase: Get.find(),
      ),
    );
  }
}
