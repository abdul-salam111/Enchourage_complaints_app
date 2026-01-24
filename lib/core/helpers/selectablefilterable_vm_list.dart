import '../../app_exports.dart';

abstract class SelectableFilterableListVM<T, K> extends ChangeNotifier {
  final List<T> data = <T>[];
  final List<T> filteredData = <T>[];

  final Set<K> expandedRows = <K>{};
  final Set<K> selectedRows = <K>{};

  // ----------------- Pagination -----------------
  int currentPage = 1;
  int itemsPerPage = 10;

  int get totalPages {
    if (filteredData.isEmpty) return 1;
    return (filteredData.length / itemsPerPage).ceil();
  }

  int get totalItems => filteredData.length;

  List<T> get paginatedData {
    final startIndex = (currentPage - 1) * itemsPerPage;
    final endIndex = (startIndex + itemsPerPage).clamp(0, filteredData.length);

    if (startIndex >= filteredData.length) return [];
    return filteredData.sublist(startIndex, endIndex);
  }

  void goToPage(int page) {
    if (page < 1 || page > totalPages) return;
    currentPage = page;
    notifyListeners();
  }

  void nextPage() {
    if (currentPage < totalPages) {
      currentPage++;
      notifyListeners();
    }
  }

  void previousPage() {
    if (currentPage > 1) {
      currentPage--;
      notifyListeners();
    }
  }

  void setItemsPerPage(int count) {
    itemsPerPage = count;
    currentPage = 1; // Reset to first page
    notifyListeners();
  }

  // Each item has a unique key (like id)
  K? keyOf(T item);

  // Search matching rule
  bool matchesQuery(T item, String q);

  // Optional: status getter (if you want filter by status)
  String statusOf(T item) => '';
  // String departmentOf(T item) => '';

  // ----------------- Expand / Select -----------------
  void toggleExpandRow(K key) {
    expandedRows.contains(key)
        ? expandedRows.remove(key)
        : expandedRows.add(key);
    notifyListeners();
  }

  void toggleRowSelection(K key) {
    selectedRows.contains(key)
        ? selectedRows.remove(key)
        : selectedRows.add(key);
    notifyListeners();
  }

  // ----------------- Search -----------------
  void search(String query) {
    final q = query.trim().toLowerCase();

    filteredData
      ..clear()
      ..addAll(q.isEmpty ? data : data.where((e) => matchesQuery(e, q)));

    currentPage = 1; // Reset to first page after search
    notifyListeners();
  }

  // ----------------- Status Filter (optional) -----------------
  String selectedStatus = 'Select Status';

  void filterByStatus(String status) {
    selectedStatus = status.trim();

    final s = selectedStatus.toLowerCase();

    filteredData
      ..clear()
      ..addAll(
        s == 'select status'
            ? data
            : data.where((e) => statusOf(e).toLowerCase() == s),
      );

    currentPage = 1; // Reset to first page after filter
    notifyListeners();
  }

  // ----------------- Select All -----------------
  bool get isAllSelected {
    if (paginatedData.isEmpty) return false;
    return paginatedData.every((e) {
      final k = keyOf(e);
      return k != null && selectedRows.contains(k);
    });
  }

  void toggleSelectAll(bool select) {
    if (select) {
      for (final e in paginatedData) {
        final k = keyOf(e);
        if (k != null) selectedRows.add(k);
      }
    } else {
      for (final e in paginatedData) {
        final k = keyOf(e);
        if (k != null) selectedRows.remove(k);
      }
    }

    notifyListeners();
  }

  // Helper to set list from API
  void setItems(List<T> items) {
    data
      ..clear()
      ..addAll(items);
    filteredData
      ..clear()
      ..addAll(items);
    currentPage = 1; // Reset to first page
    notifyListeners();
  }

  bool _isExportingFile = false;

  bool get isExportingFile => _isExportingFile;

  set isExportingFile(bool value) {
    _isExportingFile = value;
    notifyListeners();
  }

  Future<void> export({
    required String fileName,
    required String sheetName,
    List<Complaint>? complaintsList,
  }) async {
    isExportingFile = true;
    await Future.delayed(Duration(milliseconds: 100));
    try {
      await ExcelExporter.exportComplaints(
        complaintsList: complaintsList ?? (data as List<Complaint>),
        sheetName: sheetName,
        fileName: fileName,
      );
    } finally {
      isExportingFile = false;
    }
  }
}
