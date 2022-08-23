import 'package:usfa_v1/utils/constants/service_constants.dart';
import 'package:usfa_v1/utils/helpers/locator_helper.dart';

import '../../services/api/network_service.dart';

abstract class BaseApiService {
  NetworkService get networkService => getIt<NetworkService>();
  ServiceConstants get serviceConstants => ServiceConstants();
}
