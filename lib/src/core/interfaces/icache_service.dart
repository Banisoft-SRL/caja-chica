abstract class ICacheService {
  Future<bool> init();
  Future<bool> clear();
  Future<bool> delete(String key);
  Future<bool> put<TValue>(String key, TValue value);
  Future<TValue?> get<TValue>(String key);
  Future<bool> containsKey(String key);
}
