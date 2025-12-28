import 'package:get/get.dart';
import '../../data/datasources/remote_home_datasource.dart';
import '../../data/repository_impl/home_repository_impl.dart';
import '../../domain/repositories/home_repository.dart';
import '../viewmodels/home_viewmodel.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // DataSource - pass DioHelper instance
    Get.lazyPut<IRemoteHomeDataSource>(
      () => RemoteHomeDataSourceImpl(Get.find()),
    );
    
    // Repository
    Get.lazyPut<IHomeRepository>(
      () => HomeRepositoryImpl(dataSource: Get.find()),
    );
    
    // ViewModel/Controller
    Get.lazyPut<HomeViewModel>(
      () => HomeViewModel(repository: Get.find()),
    );
  }
}
