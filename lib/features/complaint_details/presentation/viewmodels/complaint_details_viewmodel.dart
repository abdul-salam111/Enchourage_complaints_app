import '../../../../app_exports.dart';

class ComplaintDetailsViewModel extends ChangeNotifier with UseCaseExecutor {
  final ComplaintDetailsUsecase _complaintDetailsUsecase;

  ComplaintDetailsViewModel({
    required ComplaintDetailsUsecase complaintDetailsUsecase,
  }) : _complaintDetailsUsecase = complaintDetailsUsecase;

  // ==========================
  // Complaint Details State
  // ==========================
  ViewComplaint? _complaintDetails;
  ViewComplaint? get complaintDetails => _complaintDetails;

  bool _isLoadingComplaintDetails = false;
  bool get isLoadingComplaintDetails => _isLoadingComplaintDetails;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

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

  // ==========================
  // Existing Code
  // ==========================
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

  // ---------------- MESSAGES ----------------
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

  // ---------------- BILLS (STATIC) ----------------
  final List<BillItem> _bills = const [
    BillItem(
      title: 'Electricity',
      amount: 120.00,
      date: '2024-06-15',
      description: 'June electricity bill for Block A. Meter reading verified.',
    ),
    BillItem(
      title: 'Water',
      amount: 35.50,
      date: '2024-06-12',
      description: 'Monthly water charges including maintenance.',
    ),
    BillItem(
      title: 'Gas',
      amount: 18.75,
      date: '2024-06-10',
      description: 'Gas usage bill for the last billing cycle.',
    ),
  ];

  List<BillItem> get bills => List.unmodifiable(_bills);

  // ---------------- EXPAND/COLLAPSE ----------------
  final Set<int> expandedRows = <int>{};

  bool isRowExpanded(int index) => expandedRows.contains(index);

  void toggleExpandRow(int index) {
    expandedRows.contains(index)
        ? expandedRows.remove(index)
        : expandedRows.add(index);
    notifyListeners();
  }

  // ---------------- Add Bill Tab----------------
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
}

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
