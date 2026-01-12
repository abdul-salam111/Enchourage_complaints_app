import '../../../../app_exports.dart';

class ComplaintDetailsViewModel extends ChangeNotifier with UseCaseExecutor {
  final ComplaintDetailsUsecase _complaintDetailsUsecase;

  ComplaintDetailsViewModel({
    required ComplaintDetailsUsecase complaintDetailsUsecase,
  }) : _complaintDetailsUsecase = complaintDetailsUsecase;

  String _selectedTime = 'Select Duration';
  String get selectedTime => _selectedTime;
  set selectedTime(String value) {
    _selectedTime = value;
    notifyListeners();
  }

  String _selectedStatus = '';
  String get selectedStatus => _selectedStatus;
  set selectedStatus(String value) {
    _selectedStatus = value;
    notifyListeners();
  }
}
