import 'dart:io';

class Utils {
  static String getPlatformVersion() {
    return 'Platform version is: ${Platform.operatingSystem}';
  }

  static Uri getUri(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    String? serverAddress,
    String? serverPort,
  }) {
    if (serverAddress == null || serverPort == null) {
      serverAddress = "10.0.0.8";
      serverPort = "5000";
    }
    return Uri.http(
        "$serverAddress:$serverPort", "/api$endpoint", queryParameters);
  }

  static Map<String, String> handlerHeaders(String? token) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      HttpHeaders.authorizationHeader: token ?? ""
    };
    return headers;
  }
}
