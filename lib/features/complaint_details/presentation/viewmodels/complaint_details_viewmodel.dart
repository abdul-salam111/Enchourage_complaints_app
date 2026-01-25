import '../../../../app_exports.dart';

class ComplaintDetailsViewModel extends ChangeNotifier with UseCaseExecutor {
  // ══════════════════════════════════════════════════════════════
  // Dependencies
  // ══════════════════════════════════════════════════════════════
  final ComplaintDetailsUsecase _complaintDetailsUsecase;
  final AddNewMessageUsecase _addNewMessageUsecase;
  final SetComplaintDurationUsecase _setComplaintDurationUsecase;

  ComplaintDetailsViewModel({
    required ComplaintDetailsUsecase complaintDetailsUsecase,
    required AddNewMessageUsecase addNewMessageUsecase,
    required SetComplaintDurationUsecase setComplaintDurationUsecase,
  }) : _complaintDetailsUsecase = complaintDetailsUsecase,
       _setComplaintDurationUsecase = setComplaintDurationUsecase,
       _addNewMessageUsecase = addNewMessageUsecase;

  // ══════════════════════════════════════════════════════════════
  // Complaint Details State
  // ══════════════════════════════════════════════════════════════
  ViewComplaint? _complaintDetails;
  ViewComplaint? get complaintDetails => _complaintDetails;

  bool _isLoadingComplaintDetails = false;
  bool get isLoadingComplaintDetails => _isLoadingComplaintDetails;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  // ──────────────────────────────────────────────────────────────
  // Complaint Details Private Setters
  // ──────────────────────────────────────────────────────────────
  void _setLoading(bool value) {
    _isLoadingComplaintDetails = value;
    notifyListeners();
  }

  void _setComplaintDetails(ViewComplaint? value) {
    _complaintDetails = value;
    notifyListeners();
  }

  void _setErrorMessage(String? value) {
    _errorMessage = value;
    notifyListeners();
  }

  // ──────────────────────────────────────────────────────────────
  // Complaint Details Methods
  // ──────────────────────────────────────────────────────────────
  Future<void> fetchComplaintDetails(int complaintId) async {
    _setLoading(true);
    _setErrorMessage(null);

    await execute(
      call: () => _complaintDetailsUsecase(complaintId),
      onSuccess: (result) {
        _setComplaintDetails(result);
        debugPrint('Complaint details loaded: ${result.data?.complaintNo}');
      },
      onError: (error) {
        _setErrorMessage(error.toString());
        debugPrint('Error loading complaint details: $error');
      },
    );

    _setLoading(false);
  }

  void clearError() {
    _errorMessage = null;
    notifyListeners();
  }

  // ══════════════════════════════════════════════════════════════
  // Duration & Status State
  // ══════════════════════════════════════════════════════════════
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

  // ──────────────────────────────────────────────────────────────
  // Duration & Status Methods
  // ──────────────────────────────────────────────────────────────
  bool _isChaningDuration = false;
  bool get isChangingDuration => _isChaningDuration;
  set isChangingDuration(bool value) {
    _isChaningDuration = value;
    notifyListeners();
  }

  Future<void> setComplaintDuration({
    required ChangeDuration complaint,
    required BuildContext context,
  }) async {
    isChangingDuration = true;
    await executeQuiet(
      call: () => _setComplaintDurationUsecase(complaint),
      onSuccess: (result) {
        isChangingDuration = false;
        AppToastsUtils.showSuccess(context, "Duration set successfully");
      },
      onError: (error) {
        isChangingDuration = false;
      },
      showError: true,
    );
  }

  // ══════════════════════════════════════════════════════════════
  // Messages State
  // ══════════════════════════════════════════════════════════════
  final List<ComplaintMessage> _messages = [];
  List<ComplaintMessage> get messages => List.unmodifiable(_messages);

  bool _isSendingMessage = false;
  bool get isSendingMessage => _isSendingMessage;
  set isSendingMessage(bool value) {
    _isSendingMessage = value;
    notifyListeners();
  }

  // ──────────────────────────────────────────────────────────────
  // Messages Methods
  // ──────────────────────────────────────────────────────────────
  Future<void> addMessage(
    BuildContext context,
    String text,
    int complaintId,
  ) async {
    final msg = text.trim();
    if (msg.isEmpty) return;

    isSendingMessage = true;

    await execute(
      call: () => _addNewMessageUsecase(
        AddMesesage(complaintId: complaintId, message: msg),
      ),
      onSuccess: (data) {
        final now = TimeOfDay.now().format(context);
        _messages.add(ComplaintMessage(message: msg, time: now));
        isSendingMessage = false;
        notifyListeners();
      },
      onError: (error) {
        isSendingMessage = false;
        debugPrint('Error sending message: $error');
      },
    );
  }

  // ══════════════════════════════════════════════════════════════
  // Bills State
  // ══════════════════════════════════════════════════════════════
  final List<BillItem> _bills = const [];
  List<BillItem> get bills => List.unmodifiable(_bills);

  // ──────────────────────────────────────────────────────────────
  // Bills Expand/Collapse State
  // ──────────────────────────────────────────────────────────────
  final Set<int> _expandedRows = <int>{};

  bool isRowExpanded(int index) => _expandedRows.contains(index);

  void toggleExpandRow(int index) {
    _expandedRows.contains(index)
        ? _expandedRows.remove(index)
        : _expandedRows.add(index);
    notifyListeners();
  }

  // ══════════════════════════════════════════════════════════════
  // Add Bill Tab State
  // ══════════════════════════════════════════════════════════════
  final List<String> _propertiesList = const [
    'Property A',
    'Property B',
    'Property C',
  ];
  List<String> get propertiesList => List.unmodifiable(_propertiesList);

  final List<String> _billTypesList = const [
    'Electricity',
    'Water',
    'Gas',
    'Maintenance',
  ];
  List<String> get billTypesList => List.unmodifiable(_billTypesList);

  String? _selectedProperty;
  String? get selectedProperty => _selectedProperty;
  set selectedProperty(String? value) {
    _selectedProperty = value;
    notifyListeners();
  }

  String? _selectedBillType;
  String? get selectedBillType => _selectedBillType;
  set selectedBillType(String? value) {
    _selectedBillType = value;
    notifyListeners();
  }

  // ══════════════════════════════════════════════════════════════
  // Cleanup
  // ══════════════════════════════════════════════════════════════
  @override
  void dispose() {
    _messages.clear();
    _expandedRows.clear();
    super.dispose();
  }
}

// ══════════════════════════════════════════════════════════════
// Models
// ══════════════════════════════════════════════════════════════
class ComplaintMessage {
  final String message;
  final String time;

  ComplaintMessage({required this.message, required this.time});
}

class BillItem {
  final String title;
  final double amount;
  final String date;
  final String description;

  const BillItem({
    required this.title,
    required this.amount,
    required this.date,
    required this.description,
  });
}
