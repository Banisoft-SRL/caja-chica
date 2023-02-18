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
  Future<TValue> get<TValue>(String key) {
    if (key.isEmpty) {
      throw Exception("el parámetro Key no puede estar vació");
    }
    final type = IModelFactory.typeOf<TValue>().toString();

    final types = {
      "String": _instance.getString(key),
      "int": _instance.getInt(key),
      "double": _instance.getDouble(key),
      "bool": _instance.getBool(key),
      "List<String>": _instance.getStringList(key),
    };

    return types[type] as Future<TValue>;
  }

  @override
  Future<bool> put<TValue>(String key, TValue value) async {
    if (key.isEmpty) {
      throw Exception("el parámetro Key no puede estar vació");
    }
    final type = IModelFactory.typeOf<TValue>().toString();

    final types = {
      "String": await _instance.setString(key, value as String),
      "int": await _instance.setInt(key, value as int),
      "double": await _instance.setDouble(key, value as double),
      "bool": await _instance.setBool(key, value as bool),
      "List<String>": await _instance.setStringList(key, value as List<String>),
    };

    return types[type] as Future<bool>;
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
