import '../../../../app_exports.dart';

class CreateComplaintViewModel extends ChangeNotifier with UseCaseExecutor {
  // ==========================
  // Dependencies
  // ==========================
  final CreateComplaintUsecase _createComplaintUsecase;
  final GetBlockListRemoteUsecase _getBlockListRemoteUsecase;
  final GetStreetListRemoteUsecase _getStreetListRemoteUsecase;
  final GetPlotListRemoteUsecase _getPlotListRemoteUsecase;

  CreateComplaintViewModel({
    required CreateComplaintUsecase createComplaintUsecase,
    required GetBlockListRemoteUsecase getBlockListRemoteUsecase,
    required GetStreetListRemoteUsecase getStreetListRemoteUsecase,
    required GetPlotListRemoteUsecase getPlotListRemoteUsecase,
  }) : _createComplaintUsecase = createComplaintUsecase,
       _getBlockListRemoteUsecase = getBlockListRemoteUsecase,
       _getStreetListRemoteUsecase = getStreetListRemoteUsecase,
       _getPlotListRemoteUsecase = getPlotListRemoteUsecase;

  // ==========================
  // Block List State
  // ==========================
  BlockList? _blockList;
  BlockList? get blockList => _blockList;

  bool _isBlockLoading = false;
  bool get isBlockLoading => _isBlockLoading;

  Blocks? _selectedBlock;
  Blocks? get selectedBlock => _selectedBlock;

  dynamic get selectedBlockId => _selectedBlock?.id; // int? or String?

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

  void _setBlockList(BlockList? value) {
    _blockList = value;
    notifyListeners();
  }

  void _setStreetList(StreetList? value) {
    _streetList = value;
    notifyListeners();
  }

  void _setPlotList(PlotList? value) {
    print('plot list: $value');
    _plotList = value;
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

  /// Block selected -> reset street & plot -> fetch streets
  Future<void> selectBlock(Blocks? block) async {
    _selectedBlock = block;

    // reset dependent
    _selectedStreet = null;
    _streetList = null;

    _selectedPlot = null;
    _plotList = null;

    notifyListeners();

    final blockId = block?.id;
    if (blockId == null) return;

    // if your id is String, convert here if needed
    await getStreetList(blockId);
  }

  Future<void> getStreetList(int blockId) async {
    print(blockId);
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

  void selectPlot(Plot? plot) {
    _selectedPlot = plot;
    notifyListeners();
  }
}
