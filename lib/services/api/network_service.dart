import 'package:usfa_v1/utils/helpers/base_api_service.dart';

import '../../utils/helpers/base_model.dart';
import 'package:http/http.dart' as http;

class NetworkService extends BaseApiService {
  Future fetchData<T extends BaseModel>(String endPoint, T model,
      {bool convertToList = false}) async {
    try {
      http.Response _response = await http.get(Uri.parse(endPoint));

      return model.userModelFromJson(_response.body);
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }
}
//done