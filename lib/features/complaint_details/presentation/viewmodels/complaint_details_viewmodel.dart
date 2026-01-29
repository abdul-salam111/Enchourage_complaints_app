import 'package:enchourage_app/features/complaint_details/data/models/response_models/bills_types_list/bills_types_list.dart';
import 'package:enchourage_app/features/complaint_details/data/models/response_models/complaint_bills_list/complaint_bills_list.dart';
import 'package:enchourage_app/features/complaint_details/data/models/response_models/complaint_property_list/complaint_property_list.dart';
import 'package:enchourage_app/features/complaint_details/domain/usecases/get_complaint_billing_types_dropdown_usecase.dart';
import 'package:enchourage_app/features/complaint_details/domain/usecases/get_complaint_bills_list_usecase.dart';
import 'package:enchourage_app/features/complaint_details/domain/usecases/get_complaints_property_list_usecase.dart';

import '../../../../app_exports.dart';

class ComplaintDetailsViewModel extends ChangeNotifier with UseCaseExecutor {
  // ══════════════════════════════════════════════════════════════
  // Dependencies
  // ══════════════════════════════════════════════════════════════
  final ComplaintDetailsUsecase _complaintDetailsUsecase;
  final AddNewMessageUsecase _addNewMessageUsecase;
  final SetComplaintDurationUsecase _setComplaintDurationUsecase;
  final GetMessagesListUsecase _getMessagesListUsecase;
  final ChangeComplaintStatusUsecase _changeComplaintStatusUsecase;
  final GetEmployeesListUsecase _getEmployeesListUsecase;
  final GetComplaintBillsListUsecase _getComplaintBillsListUsecase;
  final GetComplaintsPropertyListUsecase _getComplaintsPropertyListUsecase;
  final GetComplaintBillingTypesDropdownUsecase
  _getComplaintBillingTypesDropdownUsecase;

  ComplaintDetailsViewModel({
    required ComplaintDetailsUsecase complaintDetailsUsecase,
    required AddNewMessageUsecase addNewMessageUsecase,
    required SetComplaintDurationUsecase setComplaintDurationUsecase,
    required ChangeComplaintStatusUsecase changeComplaintStatusUsecase,
    required GetMessagesListUsecase getMessagesListUsecase,
    required GetEmployeesListUsecase getEmployeesListUsecase,
    required GetComplaintBillsListUsecase getComplaintBillsListUsecase,
    required GetComplaintsPropertyListUsecase getComplaintsPropertyListUsecase,
    required GetComplaintBillingTypesDropdownUsecase
    getComplaintBillingTypesDropdownUsecase,
  }) : _complaintDetailsUsecase = complaintDetailsUsecase,
       _setComplaintDurationUsecase = setComplaintDurationUsecase,
       _getMessagesListUsecase = getMessagesListUsecase,
       _changeComplaintStatusUsecase = changeComplaintStatusUsecase,
       _getEmployeesListUsecase = getEmployeesListUsecase,
       _getComplaintBillsListUsecase = getComplaintBillsListUsecase,
       _getComplaintBillingTypesDropdownUsecase =
           getComplaintBillingTypesDropdownUsecase,
       _getComplaintsPropertyListUsecase = getComplaintsPropertyListUsecase,
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

        // ✅ FIXED: Normalize the API response to match your keys
        final apiDuration =
            result.data?.timeDuration?.toString().toLowerCase().trim() ?? '';

        String normalizedKey = '';
        if (apiDuration.isNotEmpty) {
          // Extract number and unit
          final parts = apiDuration.split(' ');
          if (parts.length >= 2) {
            final number = parts[0];
            final unit = parts[1].toLowerCase();

            if (unit.startsWith('hour')) {
              normalizedKey = '${number}h';
            } else if (unit.startsWith('day')) {
              normalizedKey = '${number}d';
            } else if (unit.startsWith('week')) {
              normalizedKey = '${number}w';
            }
          }
        }

        debugPrint('API Duration: $apiDuration');
        debugPrint('Normalized Key: $normalizedKey');

        // Find matching option
        final matchingOption = _durationOptions.firstWhere(
          (opt) => opt.key.toLowerCase() == normalizedKey.toLowerCase(),
          orElse: () => _durationOptions.first,
        );

        selectedDuration = matchingOption.displayText;
        selectedStatus = result.data?.status ?? "Select Status";

        debugPrint('Selected Duration: $selectedDuration');
        debugPrint('Selected Status: $selectedStatus');
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
  static const List<DurationOption> _durationOptions = [
    DurationOption(displayText: 'Select Duration', key: ''),
    DurationOption(displayText: '04 Hours', key: '4h'),
    DurationOption(displayText: '08 Hours', key: '8h'),
    DurationOption(displayText: '12 Hours', key: '12h'),
    DurationOption(displayText: '24 Hours', key: '24h'),
    DurationOption(displayText: '48 Hours', key: '48h'),
    DurationOption(displayText: '05 Days', key: '5d'),
    DurationOption(displayText: '01 Week', key: '1w'),
    DurationOption(displayText: '02 Weeks', key: '2w'),
  ];

  List<DurationOption> get durationOptions => _durationOptions;

  // Get display texts for dropdown
  List<String> get durationDisplayTexts =>
      _durationOptions.map((e) => e.displayText).toList();

  String _selectedDuration = 'Select Duration';
  String get selectedDuration => _selectedDuration;
  set selectedDuration(String value) {
    _selectedDuration = value;
    notifyListeners();
  }

  // Get the API key for selected duration
  String get selectedDurationKey {
    final option = _durationOptions.firstWhere(
      (opt) => opt.displayText == _selectedDuration,
      orElse: () => _durationOptions.first,
    );
    return option.key;
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
        AppNavigator.pop();
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

  bool _isSendingMessage = false;
  bool get isSendingMessage => _isSendingMessage;
  set isSendingMessage(bool value) {
    _isSendingMessage = value;
    notifyListeners();
  }

  // ✅ Initialize with mutable list
  List<Message> _messagesList = <Message>[];
  List<Message> get messagesList => _messagesList;

  // ✅ Create mutable copy from response
  void setMessagesList(MessagesList value) {
    _messagesList = List.from(value.data ?? []);
    notifyListeners();
  }

  // ✅ Method to safely add message
  void addMessageToList(Message message) {
    _messagesList.add(message);
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
        final now = DateTime.now();
        // ✅ CHANGED: Use addMessageToList instead of direct add
        addMessageToList(Message(createdAt: now.timeAgo, message: msg));
        isSendingMessage = false;
      },
      onError: (error) {
        isSendingMessage = false;
        debugPrint('Error sending message: $error');
      },
    );
  }

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

  bool _isGettingMessages = false;
  bool get isGettingMessages => _isGettingMessages;
  set isGettingMessages(bool value) {
    _isGettingMessages = value;
    notifyListeners();
  }

  Future<void> getMessagesList({required int complaintId}) async {
    isGettingMessages = true;
    await executeQuiet(
      call: () => _getMessagesListUsecase(complaintId),
      onSuccess: (data) {
        // ✅ CHANGED: Use setMessagesList method
        setMessagesList(data);
      },
    );
    isGettingMessages = false;
  }

  Employees? _selectedEmployee;
  Employees? get selectedEmployee => _selectedEmployee;
  set selectedEmployee(Employees? value) {
    _selectedEmployee = value;
    notifyListeners();
  }

  List<Employees> employees = [];
  List<Employees> get employeesList => employees;
  set employeesList(List<Employees> value) {
    employees = value;
    notifyListeners();
  }

  //get employees
  Future<void> getEmployees() async {
    await executeQuiet(
      call: () => _getEmployeesListUsecase(NoParams()),
      onSuccess: (data) {
        employees = data;
      },
    );
  }

  // ──────────────────────────────────────────────────────────────
  // Change Complaint Status
  // ──────────────────────────────────────────────────────────────
  bool _isChangingStatus = false;
  bool get isChangingStatus => _isChangingStatus;
  set isChangingStatus(bool value) {
    _isChangingStatus = value;
    notifyListeners();
  }

  Future<void> changeComplaintStatus(
    ChangeComplaintStatus changeComplaintStatus,
    BuildContext context,
  ) async {
    isChangingStatus = true;
    await executeQuiet(
      call: () => _changeComplaintStatusUsecase(changeComplaintStatus),
      onSuccess: (data) {
        selectedStatus = data.status ?? "";
        notifyListeners();

        AppNavigator.pop();
        AppToastsUtils.showSuccess(context, "Status Changed Successfully!");
      },
    );
    isChangingStatus = false;
  }

  // ══════════════════════════════════════════════════════════════
  // Property & Bill Type Selection State
  // ══════════════════════════════════════════════════════════════

  String? _selectedPropertyAddress;
  String? get selectedProperty => _selectedPropertyAddress;
  set selectedProperty(String? value) {
    _selectedPropertyAddress = value;
    notifyListeners();
  }

  // Get property address for dropdown
  List<String> get propertiesList {
    if (_complaintProperty == null) return [];
    return [_complaintProperty!.address ?? 'Unknown Address'];
  }

  // Get the selected property object
  ComplaintProperty? get selectedPropertyObject => _complaintProperty;

  String? _selectedBillTypeName;
  String? get selectedBillType => _selectedBillTypeName;
  set selectedBillType(String? value) {
    _selectedBillTypeName = value;
    notifyListeners();
  }

  // Convert bill types to display list
  List<String> get billTypesDisplayList {
    return _billTypesList
        .map((e) => e.title ?? '')
        .where((s) => s.isNotEmpty)
        .toList();
  }

  // Get the selected bill type object
  BillType? get selectedBillTypeObject {
    if (_selectedBillTypeName == null) return null;
    try {
      return _billTypesList.firstWhere((b) => b.title == _selectedBillTypeName);
    } catch (e) {
      return null;
    }
  }

  // ══════════════════════════════════════════════════════════════
  // Bills
  // ══════════════════════════════════════════════════════════════

  List<ComplaintBills> _complaintBillsList = [];
  List<ComplaintBills> get complaintBillsList => _complaintBillsList;
  setComplaintBillsList(List<ComplaintBills> value) {
    _complaintBillsList = value;
    notifyListeners();
  }

  Future<void> getComplaintBillsList({required int complaintId}) async {
    await executeQuiet(
      call: () => _getComplaintBillsListUsecase(complaintId),
      onSuccess: (data) {
        setComplaintBillsList(data.data ?? []);
      },
    );
  }

  ComplaintProperty? _complaintProperty;
  ComplaintProperty? get complaintPropertyList => _complaintProperty;
  setComplaintProperty(ComplaintProperty value) {
    _complaintProperty = value;
    notifyListeners();
  }

  Future<void> getComplaintPropertyList({required int complaintId}) async {
    await executeQuiet(
      call: () => _getComplaintsPropertyListUsecase(complaintId),
      onSuccess: (data) {
        setComplaintProperty(data.data!);
      },
    );
  }

  List<BillType> _billTypesList = [];
  List<BillType> get billTypesList => _billTypesList;
  setBillTypesList(List<BillType> value) {
    _billTypesList = value;
    notifyListeners();
  }

  Future<void> getBillTypesList() async {
    await executeQuiet(
      call: () => _getComplaintBillingTypesDropdownUsecase(NoParams()),
      onSuccess: (data) {
        setBillTypesList(data.data ?? []);
      },
    );
  }

  // ══════════════════════════════════════════════════════════════
  // Cleanup
  // ══════════════════════════════════════════════════════════════
  @override
  void dispose() {
    _messagesList.clear();
    _expandedRows.clear();
    super.dispose();
  }
}

class DurationOption {
  final String displayText;
  final String key;

  const DurationOption({required this.displayText, required this.key});
}
