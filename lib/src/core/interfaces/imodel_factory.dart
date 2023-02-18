abstract class IModelFactory<T> {
  T fromJsonModel(Map<String, dynamic> json);
  List<T> fromJsonModelList(Object? json);
  static Type typeOf<T>() => T;
}
