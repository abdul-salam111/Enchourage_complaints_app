import 'package:flutter_template/features/home/data/models/response_models/get_user_list/get_user_list.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/networks/exceptions/app_exceptions.dart';

abstract interface class IHomeRepository {
  Future<Either<AppException, List<GetUserList>>> getUsersList();
}
