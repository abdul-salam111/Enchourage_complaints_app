import '../../app_exports.dart';

abstract class SelectableFilterableListVM<T, K> extends ChangeNotifier {
  final List<T> data = <T>[];
  final List<T> filteredData = <T>[];

  final Set<K> expandedRows = <K>{};
  final Set<K> selectedRows = <K>{};

  // Each item has a unique key (like id)
  K? keyOf(T item);

  // Search matching rule
  bool matchesQuery(T item, String q);

  // Optional: status getter (if you want filter by status)
  String statusOf(T item) => '';

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

    notifyListeners();
  }

  // ----------------- Status Filter (optional) -----------------
  String selectedStatus = 'All';

  void filterByStatus(String status) {
    selectedStatus = status.trim();

    final s = selectedStatus.toLowerCase();

    filteredData
      ..clear()
      ..addAll(
        s == 'all' ? data : data.where((e) => statusOf(e).toLowerCase() == s),
      );

    notifyListeners();
  }

  // ----------------- Select All -----------------
  bool get isAllSelected {
    if (filteredData.isEmpty) return false;
    return filteredData.every((e) {
      final k = keyOf(e);
      return k != null && selectedRows.contains(k);
    });
  }

  void toggleSelectAll(bool select) {
    selectedRows.clear();

    if (select) {
      for (final e in filteredData) {
        final k = keyOf(e);
        if (k != null) selectedRows.add(k);
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
    List<Complaints>? complaintsList,
  }) async {
    isExportingFile = true;
    await Future.delayed(Duration(milliseconds: 100));
    try {
      await ExcelExporter.exportComplaints(
        complaintsList: complaintsList ?? (data as List<Complaints>),
        sheetName: sheetName,
        fileName: fileName,
      );
    } finally {
      isExportingFile = false;
    }
  }
}
