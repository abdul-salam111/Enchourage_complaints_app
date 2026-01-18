import '../../../../app_exports.dart';

class CreateComplaintViewModel extends ChangeNotifier with UseCaseExecutor {
  final CreateComplaintUsecase _createComplaintUsecase;

  CreateComplaintViewModel({required CreateComplaintUsecase createComplaintUsecase})
      : _createComplaintUsecase = createComplaintUsecase;

  CreateComplaintResponse? _data;
  CreateComplaintResponse? get data => _data;

  Future<void> performAction() async {
    await execute(
      call: () => _createComplaintUsecase(
        CreateComplaintParams(
          param1: 'value1',
          param2: 'value2',
        ),
      ),
      onSuccess: (result) {
        _data = result;
        notifyListeners();
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
