import 'package:get/get.dart';
import '../../data/datasources/remote_signin_datasource.dart';
import '../../data/repository_impl/signin_repository_impl.dart';
import '../../domain/repositories/signin_repository.dart';
import '../../domain/usecases/signin_usecase.dart';
import '../viewmodels/signin_viewmodel.dart';

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
    Get.lazyPut<SigninUsecase>(
      () => SigninUsecase(repository: Get.find()),
    );
    
    // ViewModel/Controller
    Get.lazyPut<SigninViewModel>(
      () => SigninViewModel(signinUsecase: Get.find()),
    );
  }
}
