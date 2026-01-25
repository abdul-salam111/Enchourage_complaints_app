import '../../../../app_exports.dart';

class IndoorComplaintsViewModel
    extends SelectableFilterableListVM<Complaint, int>
    with UseCaseExecutor {
  IndoorComplaintsViewModel({
    required IndoorComplaintsUsecase indoorComplaintsUsecase,
    required DeleteComplaintRemoteUsecase deleteComplaintRemoteUsecase,
  }) : _indoorComplaintsUsecase = indoorComplaintsUsecase,
       _deleteComplaintRemoteUsecase = deleteComplaintRemoteUsecase;

  final IndoorComplaintsUsecase _indoorComplaintsUsecase;
  final DeleteComplaintRemoteUsecase _deleteComplaintRemoteUsecase;
  final FocusNode searchFocusNode = FocusNode();

  Future<void> loadIndoorComplaints() async {
    execute(
      call: () => _indoorComplaintsUsecase.call(NoParams()),
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
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }
}
