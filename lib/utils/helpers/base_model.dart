abstract class BaseModel<T> {
  T fromJson(Map<String, dynamic> json);
  T userModelFromJson(String str);
}
//done