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

  String _selectedStatus = 'Select Status';
  String get selectedStatus => _selectedStatus;
  set selectedStatus(String value) {
    _selectedStatus = value;
    notifyListeners();
  }

  final List<ComplaintMessage> _messages = [
    ComplaintMessage(
      message: 'Complaint assigned to maintenance team.',
      time: '10:30 AM',
    ),
    ComplaintMessage(
      message: 'Maintenance staff acknowledged the task.',
      time: '11:10 AM',
    ),
    ComplaintMessage(message: 'Work completed successfully.', time: '04:45 PM'),
  ];

  List<ComplaintMessage> get messages => List.unmodifiable(_messages);

  void addMessage(BuildContext context, String text) {
    final msg = text.trim();
    if (msg.isEmpty) return;

    final now = TimeOfDay.now().format(context);
    _messages.add(ComplaintMessage(message: msg, time: now));
    notifyListeners();
  }
}

class ComplaintMessage {
  final String message;
  final String time;

  ComplaintMessage({required this.message, required this.time});
}
