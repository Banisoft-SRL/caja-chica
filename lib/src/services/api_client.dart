import 'dart:convert';

import 'package:caja_chica/src/core/interfaces/icache_service.dart';
import 'package:caja_chica/src/core/utils/endpoints.dart';

import '../core/interfaces/iapi_client.dart';
import 'package:http/http.dart' as http;

import '../core/interfaces/imodel_factory.dart';
import '../data/models/client_response.dart';
import '../data/models/model_factory.dart';
import '../di_container.dart';
import '../core/utils/utils.dart';

class ApiClient implements IAPiClient {
  String? token;

  late http.Client httpClient;
  late final ICacheService cacheService;

  ApiClient() {
    httpClient = serviceLocator.get<http.Client>();
    cacheService = serviceLocator.get<ICacheService>();
  }

  @override
  Future<ApiResponse<T>> getRequest<T>(String endpoint,
      {Map<String, dynamic>? queryParameters}) async {
    if (endpoint.isEmpty) {
      throw Exception("Endpoint can't be empty");
    }
    try {
      // validate if server address is reachable
      if (!await Utils.checkIsHostIsReachable()) {
        throw Exception("El servidor no está disponible.");
      }

      final server = await cacheService.get<String>(serverAddress);

      final response = await httpClient.get(
          Utils.getUri(
            endpoint,
            queryParameters: queryParameters,
            serverAddress: server,
          ),
          headers: Utils.handlerHeaders(token));

      var model =
          ModelFactory.createModel(IModelFactory.typeOf<T>().toString());

      ApiResponse<T> result = ApiResponse.fromJson(
          jsonDecode(response.body), model.fromJsonModel,
          fromJsonModelList: model.fromJsonModelList);
      return result;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<ApiResponse<T>> postRequest<T>(String endpoint, dynamic body) async {
    var result = ApiResponse<T>();

    // validate if server address is reachable
    if (!await Utils.checkIsHostIsReachable()) {
      throw Exception("El servidor no está disponible.");
    }

    if (endpoint.isEmpty) {
      throw Exception("Endpoint can't be empty");
    }
    try {
      final response = await httpClient.post(Utils.getUri(endpoint),
          body: jsonEncode(body), headers: Utils.handlerHeaders(token));
      var model =
          ModelFactory.createModel(IModelFactory.typeOf<T>().toString());

      result = ApiResponse.fromJson(
          jsonDecode(response.body), model.fromJsonModel,
          fromJsonModelList: model.fromJsonModelList);
    } on Exception catch (e) {
      result.message?.add(e.toString());
      throw Exception(e.toString());
    }
    return result;
  }
}
