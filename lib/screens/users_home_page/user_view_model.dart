import 'package:usfa_v1/utils/constants/enums.dart';
import 'package:usfa_v1/utils/helpers/base_view_model.dart';

import '../../services/api/user_service.dart';
import '../../utils/helpers/locator_helper.dart';
import 'user_model.dart';

class UserViewModel extends BaseViewModel {
  List<UserModel>? _userData;
  List<UserModel>? get userData => _userData;

  final UserService _userService = getIt<UserService>();

  @override
  Future<void> initProvider() async {
    Future.microtask(() => providerState = ProviderState.busy);
    await _getUserInfo();
    providerState = ProviderState.idle;
  }

  Future<void> _getUserInfo() async {
    final List<UserModel> _response = await _userService.getUserInfo();
    _userData = _response;
  }
}
//done