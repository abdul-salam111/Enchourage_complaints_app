import '../../../../app_exports.dart';

class OutdoorComplaintsViewmodel
    extends SelectableFilterableListVM<Complaint, int>
    with UseCaseExecutor {
  OutdoorComplaintsViewmodel({
    required OutdoorComplaintsUsecase outudoorComplaintsUsecase,
    required DeleteComplaintRemoteUsecase deleteComplaintRemoteUsecase,
    required DeleteSelectedComplaintsUsecase deleteSelectedComplaintsUsecase,
  }) : _outdoorComplaintsUsecase = outudoorComplaintsUsecase,
       _deleteSelectedComplaintsUsecase = deleteSelectedComplaintsUsecase,
       _deleteComplaintRemoteUsecase = deleteComplaintRemoteUsecase;

  final OutdoorComplaintsUsecase _outdoorComplaintsUsecase;
  final DeleteComplaintRemoteUsecase _deleteComplaintRemoteUsecase;
  final DeleteSelectedComplaintsUsecase _deleteSelectedComplaintsUsecase;

  final FocusNode searchFocusNode = FocusNode();

  // Department filter state
  String _selectedDepartment = 'Select Department';
  String get selectedDepartment => _selectedDepartment;

  // Search query and status (to combine all filters)
  String _searchQuery = '';

  Future<void> loadOutdoorComplaints() async {
    execute(
      call: () => _outdoorComplaintsUsecase.call(NoParams()),
      onSuccess: (OutdoorComplaintsList res) {
        setItems(res.complaints ?? <Complaint>[]);
      },
      showError: true,
    );
  }

  // Override search to store query and apply combined filters
  @override
  void search(String query) {
    _searchQuery = query.trim().toLowerCase();
    _applyAllFilters();
  }

  // Override status filter to apply combined filters
  @override
  void filterByStatus(String status) {
    selectedStatus = status.trim();
    _applyAllFilters();
  }

  // Department filter method
  void filterByDepartment(String department) {
    _selectedDepartment = department;
    _applyAllFilters();
  }

  // Apply all filters together (search + status + department)
  void _applyAllFilters() {
    var result = List<Complaint>.from(data);

    // 1. Apply search filter
    if (_searchQuery.isNotEmpty) {
      result = result.where((e) => matchesQuery(e, _searchQuery)).toList();
    }

    // 2. Apply status filter
    if (selectedStatus.toLowerCase() != 'select status') {
      result = result
          .where(
            (e) => statusOf(e).toLowerCase() == selectedStatus.toLowerCase(),
          )
          .toList();
    }

    // 3. Apply department filter
    if (_selectedDepartment != 'Select Department') {
      result = result.where((c) {
        final department = (c.complaintType ?? '').trim();
        return department == _selectedDepartment;
      }).toList();
    }

    filteredData
      ..clear()
      ..addAll(result);

    currentPage = 1; // Reset to first page after filter
    notifyListeners();
  }

  @override
  int? keyOf(Complaint item) => item.complaintNo;

  @override
  String statusOf(Complaint item) => (item.status ?? '').trim();

  @override
  bool matchesQuery(Complaint c, String q) {
    final id = (c.complaintNo?.toString() ?? '').toLowerCase();
    final memberId = (c.memberName?.toString() ?? '').toLowerCase();
    final status = (c.status ?? '').toLowerCase();
    return id.contains(q) || memberId.contains(q) || status.contains(q);
  }

  @override
  Future<bool> performDelete(int id) async {
    bool success = false;

    await executeQuiet(
      call: () => _deleteComplaintRemoteUsecase(id),
      onSuccess: (bool res) {
        success = res;
      },
      successMessage: 'Complaint deleted successfully',
      onError: (error) {
        success = false;
      },
      showError: true,
    );

    return success;
  }

  @override
  Future<bool> performBatchDelete(List<int> ids) async {
    bool success = false;

    await execute(
      call: () => _deleteSelectedComplaintsUsecase.call(ids),
      onSuccess: (bool res) {
        success = res;
      },
      showError: true,
    );

    return success;
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }
}
