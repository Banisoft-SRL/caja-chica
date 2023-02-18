import '../../data/models/client_response.dart';

abstract class IAPiClient {
  Future<ApiResponse<T>> getRequest<T>(String endpoint,
      {Map<String, dynamic>? queryParameters});

  Future<ApiResponse<T>> postRequest<T>(String endpoint, dynamic body);
}
