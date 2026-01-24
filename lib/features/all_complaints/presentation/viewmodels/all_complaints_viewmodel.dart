import '../../../../app_exports.dart';

class AllComplaintsViewModel extends SelectableFilterableListVM<Complaint, int>
    with UseCaseExecutor {
  AllComplaintsViewModel({
    required AllComplaintsUsecase allComplaintsUsecase,
    required DeleteComplaintRemoteUsecase deleteComplaintRemoteUsecase,
  }) : _allComplaintsUsecase = allComplaintsUsecase,
       _deleteComplaintRemoteUsecase = deleteComplaintRemoteUsecase;

  final AllComplaintsUsecase _allComplaintsUsecase;
  final DeleteComplaintRemoteUsecase _deleteComplaintRemoteUsecase;

  final FocusNode searchFocusNode = FocusNode();

  Future<void> loadComplaints() async {
    execute(
      call: () => _allComplaintsUsecase.call(NoParams()),
      onSuccess: (ComplaintsList res) {
        setItems(res.data ?? <Complaint>[]);
      },
      showError: true,
    );
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

  bool _isDeleting = false;
  bool get getIsDeleting => _isDeleting;

  set setIsDeleting(bool value) {
    _isDeleting = value;
    notifyListeners();
  }

  int _deletingId = -1;
  int get getDeletingId => _deletingId;

  set setDeletingId(int value) {
    _deletingId = value;
    notifyListeners();
  }

  Future<void> deleteComplaint(int complaintId) async {
    _isDeleting = true;
    setDeletingId = complaintId;
    notifyListeners();

    // Use executeQuiet to avoid affecting the main isLoading state
    await executeQuiet(
      call: () => _deleteComplaintRemoteUsecase(complaintId),
      onSuccess: (bool res) {
        // Remove from the actual data sources
        data.removeWhere((e) => e.complaintNo == complaintId);
        filteredData.removeWhere((e) => e.complaintNo == complaintId);

        // Remove from selected rows if it was selected
        selectedRows.remove(complaintId);

        _isDeleting = false;
        notifyListeners();
      },
      successMessage: 'Complaint deleted successfully',
      onError: (error) {
        _isDeleting = false;
        notifyListeners();
      },
      showError: true,
    );
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }
}
