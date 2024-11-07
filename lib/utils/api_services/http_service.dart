import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:trogon_media_machine_test/utils/api_services/api_endpoints.dart';
import 'package:trogon_media_machine_test/utils/debug_print/debug_print.dart';

class HttpApiService {
  Future<http.Response?> apiRequest({
    required String url,
    required String method,
  }) async {
    customPrint("api called ${ApiEndpoints.baseUrl}/$url");
    // String? accessToken =
    //     await SecureStorageService().getCachedData(key: 'token');
    final headerWithout = {
      "Content-Type": "application/x-www-form-urlencoded",
      "Content-type": "application/json"
    };
    String apiUrl = "${ApiEndpoints.baseUrl}$url";
    http.Response? response;

    switch (method.toLowerCase()) {
      case 'get':
        response = await http
            .get(
                Uri.parse(
                  apiUrl,
                ),
                headers: headerWithout)
            .timeout(const Duration(seconds: 10));
        break;

      default:
    }

    if (response?.statusCode == 200) {
      return response;
    } else if (response?.statusCode == 401 || response?.statusCode == 403) {
      return response;
    } else {
      return response;
    }
  }
}
