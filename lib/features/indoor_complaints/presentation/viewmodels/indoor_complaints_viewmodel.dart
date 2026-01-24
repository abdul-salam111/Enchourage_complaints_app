import '../../../../app_exports.dart';

class IndoorComplaintsViewModel
    extends SelectableFilterableListVM<Complaint, int>
    with UseCaseExecutor {
  IndoorComplaintsViewModel({
    required IndoorComplaintsUsecase indoorComplaintsUsecase,
  }) : _indoorComplaintsUsecase = indoorComplaintsUsecase;

  final IndoorComplaintsUsecase _indoorComplaintsUsecase;

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
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }
}
