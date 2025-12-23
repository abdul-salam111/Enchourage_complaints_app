import 'package:flutter_template/features/home/data/models/response_models/get_user_list/get_user_list.dart';
import 'package:flutter_template/features/home/domain/usecases/get_remote_user_list.dart';
import 'package:get/get.dart';
import '../../../../core/shared/domain/usecases/usecase.dart';

class HomeViewModel extends GetxController {
  final GetRemoteUserListUsecase getRemoteUserListUsecase;

  HomeViewModel({required this.getRemoteUserListUsecase});

  final RxBool isLoading = false.obs;
  late RxList getUserList = RxList<GetUserList>();

  Future<void> getUsersList() async {
    isLoading(true);
    final apiResponse = await getRemoteUserListUsecase.call(NoParams());
    apiResponse.fold((l) => print(l.toString()), (r) => getUserList(r));
    isLoading(false);
  }

  @override
  void onInit() {
    super.onInit();
    getUsersList();
  }

  @override
  void onClose() {
    // Clean up resources
    super.onClose();
  }
}
