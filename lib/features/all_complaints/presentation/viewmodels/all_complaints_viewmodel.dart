import '../../../../app_exports.dart';

class AllComplaintsViewModel extends ChangeNotifier with UseCaseExecutor {
  final AllComplaintsUsecase _allComplaintsUsecase;

  AllComplaintsViewModel({required AllComplaintsUsecase allComplaintsUsecase})
    : _allComplaintsUsecase = allComplaintsUsecase;

  final FocusNode searchFocusNode = FocusNode();

  final List<AllComplaintsResponse> data = [];
  final List<AllComplaintsResponse> filteredData = [];
  List<AllComplaintsResponse> paginatedData = [];

  int currentPage = 1;
  final int itemsPerPage = 10;

  final Set<String> expandedRows = {};
  final Set<String> selectedRows = {};

  String selectedStatus = '';
  bool isLoading = false;

  int get totalPages =>
      (filteredData.length / itemsPerPage).ceil().clamp(1, 999999);

  void _rebuildPagination() {
    final start = (currentPage - 1) * itemsPerPage;
    final end = (start + itemsPerPage).clamp(0, filteredData.length);

    if (start >= filteredData.length) {
      paginatedData = [];
    } else {
      paginatedData = filteredData.sublist(start, end);
    }
  }

  void setData(List<AllComplaintsResponse> newData) {
    data
      ..clear()
      ..addAll(newData);

    filteredData
      ..clear()
      ..addAll(newData);

    currentPage = 1;
    _rebuildPagination();
    notifyListeners();
  }

  /// ✅ Call this from UI initState
  Future<void> loadComplaints() async {
    isLoading = true;
    notifyListeners();

    // ✅ STATIC DATA
    final staticComplaints = List.generate(25, (i) {
      final index = i + 1;
      return AllComplaintsResponse(
        id: '$index',
        complaintNo: 'CMP-${index.toString().padLeft(3, '0')}',
        name: index.isEven ? 'Abdul Salam' : 'Ali Khan',
        description: index.isEven
            ? 'Street light not working'
            : 'Water leakage in bathroom',
        status: (index % 3 == 0)
            ? 'Resolved'
            : (index % 3 == 1)
            ? 'Pending'
            : 'In Progress',
        date: DateTime.now().subtract(Duration(days: index)),
        success: true,
      );
    });

    setData(staticComplaints);

    isLoading = false;
    notifyListeners();
  }

  void goToPage(int page) {
    currentPage = page.clamp(1, totalPages);
    _rebuildPagination();
    notifyListeners();
  }

  void toggleExpandRow(String id) {
    expandedRows.contains(id) ? expandedRows.remove(id) : expandedRows.add(id);
    notifyListeners();
  }

  void toggleRowSelection(String id) {
    selectedRows.contains(id) ? selectedRows.remove(id) : selectedRows.add(id);
    notifyListeners();
  }

  void search(String query) {
    final q = query.trim().toLowerCase();

    filteredData
      ..clear()
      ..addAll(
        q.isEmpty
            ? data
            : data.where((c) {
                return c.complaintNo.toLowerCase().contains(q) ||
                    c.name.toLowerCase().contains(q) ||
                    c.status.toLowerCase().contains(q) ||
                    c.description.toLowerCase().contains(q);
              }),
      );

    currentPage = 1;
    _rebuildPagination();
    notifyListeners();
  }

  void filterByStatus(String status) {
    selectedStatus = status;

    filteredData
      ..clear()
      ..addAll(
        status.isEmpty
            ? data
            : data.where((c) => c.status.toLowerCase() == status.toLowerCase()),
      );

    currentPage = 1;
    _rebuildPagination();
    notifyListeners();
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }
}
