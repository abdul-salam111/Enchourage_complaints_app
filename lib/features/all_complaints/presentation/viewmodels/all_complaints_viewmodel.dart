import '../../../../app_exports.dart';

class AllComplaintsViewModel extends SelectableFilterableListVM<Complaint, int>
    with UseCaseExecutor {
  AllComplaintsViewModel({required AllComplaintsUsecase allComplaintsUsecase})
    : _allComplaintsUsecase = allComplaintsUsecase;

  final AllComplaintsUsecase _allComplaintsUsecase;

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
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }
}
