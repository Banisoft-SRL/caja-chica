import 'dart:io';

import 'package:caja_chica/src/core/interfaces/icache_service.dart';
import 'package:caja_chica/src/core/utils/endpoints.dart';
import 'package:caja_chica/src/di_container.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class Utils {
  static String getPlatformVersion() {
    return 'Platform version is: ${Platform.operatingSystem}';
  }

  static Uri getUri(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    String? serverAddress,
  }) {
    return Uri.http(serverAddress!, "/api$endpoint", queryParameters);
  }

  static Map<String, String> handlerHeaders(String? token) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      HttpHeaders.authorizationHeader: token ?? ""
    };
    return headers;
  }

  static Future<bool> checkIsHostIsReachable({String? server}) async {
    try {
      final internetCheck = InternetConnectionChecker();
      final cache = serviceLocator.get<ICacheService>();
      final serverAddr = server ?? await cache.get<String>(serverAddress);

      if (serverAddr == null) return false;

      var hostIp = await InternetAddress.lookup(serverAddr.split(":")[0]);

      final options = AddressCheckOptions(hostIp.first,
          port: int.parse(serverAddr.split(":")[1]));

      final hostReachable = await internetCheck.isHostReachable(options);

      if (!hostReachable.isSuccess) return false;
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  static Future<bool> defineAndTestServiceDefinition(
      String? address, String? port) async {
    final cache = serviceLocator.get<ICacheService>();
    if (address == null || port == null) return false;

    final baseUrl = "$address:$port";
    if (!await checkIsHostIsReachable(server: baseUrl)) return false;

    await cache.put<String>(serverAddress, baseUrl);
    return true;
  }
}
