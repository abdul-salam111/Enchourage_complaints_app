import 'package:flutter_template/features/home/domain/usecases/get_remote_user_list.dart';
import 'package:get/get.dart';
import '../../data/datasources/remote_home_datasource.dart';
import '../../data/repository_impl/home_repository_impl.dart';
import '../../domain/repositories/home_repository.dart';
import '../viewmodels/home_viewmodel.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // DataSource
    Get.lazyPut<IRemoteHomeDataSource>(
      () => RemoteHomeDataSourceImpl(dioHelper: Get.find()),
    );

    // Repository
    Get.lazyPut<IHomeRepository>(() => HomeRepositoryImpl(Get.find()));

    Get.lazyPut<GetRemoteUserListUsecase>(
      () => GetRemoteUserListUsecase(Get.find()),
    );

    // ViewModel/Controller
    Get.lazyPut<HomeViewModel>(
      () => HomeViewModel(getRemoteUserListUsecase: Get.find()),
    );
  }
}
