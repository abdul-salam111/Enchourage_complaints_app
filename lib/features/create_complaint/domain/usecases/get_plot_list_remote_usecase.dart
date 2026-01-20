import '../../../../app_exports.dart';

class GetPlotListRemoteUsecase implements Usecase<PlotList, int> {
  final ICreateComplaintRepository repository;

  GetPlotListRemoteUsecase({required this.repository});

  @override
  Future<Either<AppException, PlotList>> call(int plotId) {
    return repository.getPlotList(streetId: plotId);
  }
}
