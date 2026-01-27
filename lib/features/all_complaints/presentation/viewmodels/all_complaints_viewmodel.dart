import '../../../../app_exports.dart';

class AllComplaintsViewModel extends SelectableFilterableListVM<Complaint, int>
    with UseCaseExecutor {
  AllComplaintsViewModel({
    required AllComplaintsUsecase allComplaintsUsecase,
    required DeleteComplaintRemoteUsecase deleteComplaintRemoteUsecase,
    required DeleteSelectedComplaintsUsecase deleteSelectedComplaintsUsecase,
  }) : _allComplaintsUsecase = allComplaintsUsecase,
       _deleteSelectedComplaintsUsecase = deleteSelectedComplaintsUsecase,
       _deleteComplaintRemoteUsecase = deleteComplaintRemoteUsecase;

  final AllComplaintsUsecase _allComplaintsUsecase;
  final DeleteComplaintRemoteUsecase _deleteComplaintRemoteUsecase;
  final DeleteSelectedComplaintsUsecase _deleteSelectedComplaintsUsecase;

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
