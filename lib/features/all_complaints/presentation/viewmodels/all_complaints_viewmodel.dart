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

  bool isDeleting = false;
  bool get getIsDeleting => isDeleting;
  set setIsDeleting(bool value) {
    isDeleting = value;
    notifyListeners();
  }

  Future<void> deleteComplaint(int complaintId) async {
    setIsDeleting = true;
    await execute(
      call: () => _deleteComplaintRemoteUsecase(complaintId),
      onSuccess: (bool res) {
        paginatedData.removeWhere((e) => e.complaintNo == complaintId);
        setIsDeleting = false;
        AppToastsUtils.success(
          'Complaint deleted successfully',
          title: "Deleted",
        );
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
