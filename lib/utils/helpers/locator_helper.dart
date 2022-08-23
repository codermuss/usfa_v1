import 'package:get_it/get_it.dart';
import 'package:usfa_v1/screens/users_home_page/user_view_model.dart';
import 'package:usfa_v1/services/api/network_service.dart';
import 'package:usfa_v1/services/api/user_service.dart';

final GetIt _getIt = GetIt.instance;
GetIt get getIt => _getIt;

//locator olmasının sebebi yer tutucu anlamında. Nesneleri bir kere yaratıp yerini tutuyor.
void initializeLocator() {
  //Service Instances
  getIt.registerLazySingleton(() => NetworkService());

  //ViewModel Instances
  getIt.registerLazySingleton(() => UserViewModel());

  //Service Instances
  getIt.registerLazySingleton(() => UserService());
}

//done
