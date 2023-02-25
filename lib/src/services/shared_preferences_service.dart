import 'package:caja_chica/src/core/interfaces/icache_service.dart';
import 'package:caja_chica/src/core/interfaces/imodel_factory.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService implements ICacheService {
  late SharedPreferences _instance;

  @override
  Future<bool> clear() async {
    return await _instance.clear();
  }

  @override
  Future<bool> containsKey(String key) {
    if (key.isEmpty) {
      throw Exception("el parámetro Key no puede estar vació");
    }
    return _instance.containsKey(key) as Future<bool>;
  }

  @override
  Future<bool> delete(String key) async {
    if (key.isEmpty) {
      throw Exception("el parámetro Key no puede estar vació");
    }
    try {
      return await _instance.remove(key);
    } catch (e) {
      return false;
    }
  }

  @override
  Future<TValue?> get<TValue>(String key) async {
    if (key.isEmpty) {
      throw Exception("el parámetro Key no puede estar vació");
    }
    final type = IModelFactory.typeOf<TValue>().toString();

    switch (type) {
      case "String":
        return _instance.getString(key) as TValue?;

      case "int":
        return _instance.getInt(key) as TValue;

      case "double":
        return _instance.getDouble(key) as TValue;

      case "bool":
        return _instance.getBool(key) as TValue;

      case "List<String>":
        return _instance.getStringList(key) as TValue;

      default:
        return null;
    }
  }

  @override
  Future<bool> put<TValue>(String key, TValue value) async {
    if (key.isEmpty) {
      throw Exception("el parámetro Key no puede estar vació");
    }
    final type = IModelFactory.typeOf<TValue>().toString();

    switch (type) {
      case "String":
        await _instance.setString(key, value as String);
        break;
      case "int":
        await _instance.setInt(key, value as int);
        break;
      case "double":
        await _instance.setDouble(key, value as double);
        break;
      case "bool":
        await _instance.setBool(key, value as bool);
        break;
      case "List<String>":
        await _instance.setStringList(key, value as List<String>);
        break;
      default:
        return false;
    }

    return true;
  }

  @override
  Future<bool> init() async {
    try {
      _instance = await SharedPreferences.getInstance();
      return true;
    } catch (e) {
      return false;
    }
  }
}
