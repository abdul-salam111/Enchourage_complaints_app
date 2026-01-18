import '../../../../app_exports.dart';

class OutdoorComplaintsViewmodel
    extends SelectableFilterableListVM<Complaints, int>
    with UseCaseExecutor {
  OutdoorComplaintsViewmodel({
    required OutdoorComplaintsUsecase outudoorComplaintsUsecase,
  }) : _outdoorComplaintsUsecase = outudoorComplaintsUsecase;

  final OutdoorComplaintsUsecase _outdoorComplaintsUsecase;

  final FocusNode searchFocusNode = FocusNode();

  Future<void> loadOutdoorComplaints() async {
    execute(
      call: () => _outdoorComplaintsUsecase.call(NoParams()),
      onSuccess: (AllComplaintsList res) {
        setItems(res.data ?? <Complaints>[]);
      },
      showError: true,
    );
  }

  @override
  int? keyOf(Complaints item) => item.id;

  @override
  String statusOf(Complaints item) => (item.status ?? '').trim();

  @override
  bool matchesQuery(Complaints c, String q) {
    final id = (c.id?.toString() ?? '').toLowerCase();
    final memberId = (c.memberId?.toString() ?? '').toLowerCase();
    final status = (c.status ?? '').toLowerCase();
    return id.contains(q) || memberId.contains(q) || status.contains(q);
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }
}
