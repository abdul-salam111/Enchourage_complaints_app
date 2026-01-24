import 'dart:io';

import '../../../../app_exports.dart';

class CreateComplaintViewModel extends ChangeNotifier with UseCaseExecutor {
  // ==========================
  // Dependencies
  // ==========================
  final CreateComplaintUsecase _createComplaintUsecase;
  final GetBlockListRemoteUsecase _getBlockListRemoteUsecase;
  final GetStreetListRemoteUsecase _getStreetListRemoteUsecase;
  final GetPlotListRemoteUsecase _getPlotListRemoteUsecase;
  final GetResidentOwnerRemoteUsecas _getResidentOwnerRemoteUsecase;
  final GetComplaintTypesListRemoteUsecase _getComplaintTypesListRemoteUsecase;

  CreateComplaintViewModel({
    required CreateComplaintUsecase createComplaintUsecase,
    required GetBlockListRemoteUsecase getBlockListRemoteUsecase,
    required GetStreetListRemoteUsecase getStreetListRemoteUsecase,
    required GetPlotListRemoteUsecase getPlotListRemoteUsecase,
    required GetResidentOwnerRemoteUsecas getResidentOwnerRemoteUsecase,
    required GetComplaintTypesListRemoteUsecase
    getComplaintTypesListRemoteUsecase,
  }) : _createComplaintUsecase = createComplaintUsecase,
       _getBlockListRemoteUsecase = getBlockListRemoteUsecase,
       _getStreetListRemoteUsecase = getStreetListRemoteUsecase,
       _getPlotListRemoteUsecase = getPlotListRemoteUsecase,
       _getComplaintTypesListRemoteUsecase = getComplaintTypesListRemoteUsecase,
       _getResidentOwnerRemoteUsecase = getResidentOwnerRemoteUsecase;

  // ==========================
  // Block List State
  // ==========================
  BlockList? _blockList;
  BlockList? get blockList => _blockList;

  bool _isBlockLoading = false;
  bool get isBlockLoading => _isBlockLoading;

  Blocks? _selectedBlock;
  Blocks? get selectedBlock => _selectedBlock;

  dynamic get selectedBlockId => _selectedBlock?.id;

  // ==========================
  // Street List State
  // ==========================
  StreetList? _streetList;
  StreetList? get streetList => _streetList;

  bool _isStreetLoading = false;
  bool get isStreetLoading => _isStreetLoading;

  Street? _selectedStreet;
  Street? get selectedStreet => _selectedStreet;

  dynamic get selectedStreetId => _selectedStreet?.id;

  // ==========================
  // Plot List State
  // ==========================
  PlotList? _plotList;
  PlotList? get plotList => _plotList;

  bool _isPlotLoading = false;
  bool get isPlotLoading => _isPlotLoading;

  Plot? _selectedPlot;
  Plot? get selectedPlot => _selectedPlot;

  dynamic get selectedPlotId => _selectedPlot?.id;

  // ==========================
  // Resident Owner State
  // ==========================
  ResidentOwner? _residentOwner;
  ResidentOwner? get residentOwner => _residentOwner;

  bool _isResidentLoading = false;
  bool get isResidentLoading => _isResidentLoading;

  String get residentOwnerName =>
      _residentOwner?.data?.owner ?? "Resident Owner";

  // ==========================
  // ComplaintTypes List State
  // ==========================
  ComplaintTypesList? _complaintTypesList;
  ComplaintTypesList? get complaintTypesList => _complaintTypesList;

  bool _isComplaintTypesLoading = false;
  bool get isComplaintTypesLoading => _isComplaintTypesLoading;

  FindDepartment? _selectedComplaintType;
  FindDepartment? get selectedComplaintType => _selectedComplaintType;

  dynamic get selectedComplaintTypeId => _selectedComplaintType?.id;
  dynamic get selectedComplaintTypeName => _selectedComplaintType?.title;

  // Flatten the complaint types for dropdown
  List<FindDepartment> get flattenedComplaintTypes {
    if (_complaintTypesList?.data == null) return [];

    List<FindDepartment> flattened = [];
    for (var type in _complaintTypesList!.data!) {
      if (type.findDepartments != null) {
        flattened.addAll(type.findDepartments!);
      }
    }
    return flattened;
  }

  // Get parent category name for a department
  String? getParentCategoryName(FindDepartment department) {
    if (_complaintTypesList?.data == null) return null;

    for (var type in _complaintTypesList!.data!) {
      if (type.findDepartments?.any((d) => d.id == department.id) ?? false) {
        return type.title;
      }
    }
    return null;
  }

  // ==========================
  // Internal Setters
  // ==========================
  void _setBlockLoading(bool value) {
    _isBlockLoading = value;
    notifyListeners();
  }

  void _setStreetLoading(bool value) {
    _isStreetLoading = value;
    notifyListeners();
  }

  void _setPlotLoading(bool value) {
    _isPlotLoading = value;
    notifyListeners();
  }

  void _setResidentLoading(bool value) {
    _isResidentLoading = value;
    notifyListeners();
  }

  void _setComplaintTypesLoading(bool value) {
    _isComplaintTypesLoading = value;
    notifyListeners();
  }

  void _setBlockList(BlockList? value) {
    _blockList = value;
    notifyListeners();
  }

  void _setStreetList(StreetList? value) {
    _streetList = value;
    notifyListeners();
  }

  void _setPlotList(PlotList? value) {
    _plotList = value;
    notifyListeners();
  }

  void _setResidentOwner(ResidentOwner? value) {
    _residentOwner = value;
    notifyListeners();
  }

  void _setComplaintTypesList(ComplaintTypesList? value) {
    _complaintTypesList = value;
    notifyListeners();
  }

  // ==========================
  // Public Actions
  // ==========================
  Future<void> getBlockList() async {
    _setBlockLoading(true);

    await execute(
      call: () => _getBlockListRemoteUsecase(NoParams()),
      onSuccess: (result) => _setBlockList(result),
      onError: (_) {},
    );

    _setBlockLoading(false);
  }

  Future<void> getComplaintTypesList() async {
    _setComplaintTypesLoading(true);

    await execute(
      call: () => _getComplaintTypesListRemoteUsecase(NoParams()),
      onSuccess: (result) => _setComplaintTypesList(result),
      onError: (_) {},
    );

    _setComplaintTypesLoading(false);
  }

  /// Block selected -> reset street & plot -> fetch streets
  Future<void> selectBlock(Blocks? block) async {
    _selectedBlock = block;

    // reset dependent
    _selectedStreet = null;
    _streetList = null;

    _selectedPlot = null;
    _plotList = null;

    _residentOwner = null;

    notifyListeners();

    final blockId = block?.id;
    if (blockId == null) return;

    await getStreetList(blockId);
  }

  Future<void> getStreetList(int blockId) async {
    _setStreetLoading(true);

    await execute(
      call: () => _getStreetListRemoteUsecase(blockId),
      onSuccess: (result) => _setStreetList(result),
      onError: (_) {},
    );

    _setStreetLoading(false);
  }

  /// Street selected -> reset plot -> fetch plots by streetId
  Future<void> selectStreet(Street? street) async {
    _selectedStreet = street;

    // reset dependent
    _selectedPlot = null;
    _plotList = null;

    _residentOwner = null;

    notifyListeners();

    final streetId = street?.id;
    if (streetId == null) return;

    await getPlotList(streetId);
  }

  Future<void> getPlotList(int streetId) async {
    _setPlotLoading(true);

    await execute(
      call: () => _getPlotListRemoteUsecase(streetId),
      onSuccess: (result) => _setPlotList(result),
      onError: (_) {},
    );

    _setPlotLoading(false);
  }

  /// Plot selected -> fetch resident owner
  Future<void> selectPlot(Plot? plot) async {
    _selectedPlot = plot;
    _residentOwner = null;
    notifyListeners();

    final plotId = plot?.id;
    if (plotId == null) return;

    await getResidentOwner(plotId);
  }

  Future<void> getResidentOwner(int plotId) async {
    _setResidentLoading(true);

    await execute(
      call: () => _getResidentOwnerRemoteUsecase(plotId),
      onSuccess: (result) => _setResidentOwner(result),
      onError: (_) {
        _setResidentOwner(null);
      },
    );

    _setResidentLoading(false);
  }

  void selectComplaintType(FindDepartment? department) {
    _selectedComplaintType = department;
    notifyListeners();
  }

  bool _isSubmitting = false;
  bool get isSubmitting => _isSubmitting;
  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  void _setSubmitting(bool value) {
    _isSubmitting = value;
    notifyListeners();
  }

  void _setErrorMessage(String? value) {
    _errorMessage = value;
    notifyListeners();
  }

  void clearError() {
    _errorMessage = null;
    notifyListeners();
  }

  final descriptionController = TextEditingController();

  // String? validateForm() {
  //   if (_selectedBlock == null) {
  //     return "Please select a block";
  //   }
  //   if (_selectedStreet == null) {
  //     return "Please select a street";
  //   }
  //   if (_selectedPlot == null) {
  //     return "Please select a plot";
  //   }
  //   if (_selectedComplaintType == null) {
  //     return "Please select a complaint type";
  //   }
  //   if (descriptionController.text.trim().isEmpty) {
  //     return "Please enter a description";
  //   }
  //   return null;
  // }

  Future<void> submitComplaint(List<File> attachments) async {
    // Clear previous error
    clearError();

    _setSubmitting(true);

    // Convert File objects to paths
    final attachmentPaths = attachments.map((file) => file.path).toList();

    // Create request model
    final request = CreateComplaintRequest(
      complaintType: _selectedComplaintType!.title ?? '',
      description: descriptionController.text.trim(),
      block: _selectedBlock!.blockName ?? '',
      street: _selectedStreet!.streetNo ?? '',
      house: _selectedPlot!.plotNo ?? '',
      residents: _residentOwner?.data?.owner ?? '',
      plotId: _selectedPlot!.id.toString(),
      attachmentPaths: attachmentPaths.isNotEmpty ? attachmentPaths : null,
    );

    await execute(
      call: () => _createComplaintUsecase(request),
      onSuccess: (result) {
        AppToastsUtils.success('Complaint submitted successfully');

        clearForm();
      },
      onError: (error) {
        _setErrorMessage(error.toString());
        debugPrint('Error creating complaint: $error');
      },
    );

    _setSubmitting(false);
  }

  void clearForm() {
    descriptionController.clear();
    _selectedBlock = null;
    _selectedStreet = null;
    _selectedPlot = null;
    _selectedComplaintType = null;
    _residentOwner = null;
    _blockList = null;
    _streetList = null;
    _plotList = null;
    notifyListeners();
  }

  @override
  void dispose() {
    descriptionController.dispose();
    super.dispose();
  }
}
