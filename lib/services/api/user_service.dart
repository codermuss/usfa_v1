import 'package:usfa_v1/utils/helpers/base_api_service.dart';

import '../../screens/users_home_page/user_model.dart';

class UserService extends BaseApiService {
  Future<List<UserModel>> getUserInfo() async {
    return await networkService.fetchData(
        serviceConstants.userInfo, UserModel());
  }
}
//done