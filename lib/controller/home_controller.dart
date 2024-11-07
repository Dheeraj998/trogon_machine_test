import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:trogon_media_machine_test/model/home_model.dart';
import 'package:trogon_media_machine_test/utils/api_services/api_endpoints.dart';
import 'package:trogon_media_machine_test/utils/api_services/api_response.dart';
import 'package:trogon_media_machine_test/utils/api_services/http_service.dart';
import 'package:trogon_media_machine_test/utils/debug_print/debug_print.dart';

class HomeController extends ChangeNotifier {
  APIResponse? homeApiResponse;
  List<HomeModel>? homeList;
  List<HomeModel>? filteredList;

  getHomeListApiFn(BuildContext context) async {
    homeApiResponse = APIResponse(loading: true, data: null);
    notifyListeners();
    try {
      final response = await HttpApiService().apiRequest(
        url: ApiEndpoints.productEndPoint,
        method: 'get',
      );

      if (response?.statusCode == 200 || response?.statusCode == 201) {
        customLog("********* ${response?.body}");
        homeApiResponse = homeApiResponse?.copyWith(
            loading: false, status: APIstatus.onSuccess);

        homeList = homeModelFromJson(((response?.body ?? "")));
        filteredList = homeList;
        customLog("::::::::::: home list $homeList");
      } else {
        homeApiResponse = homeApiResponse?.copyWith(
            loading: false,
            message: jsonDecode(response!.body)['message'] ?? '',
            status: APIstatus.onError);
      }
    } on SocketException catch (_) {
      homeApiResponse = homeApiResponse?.copyWith(
          loading: false,
          message: 'No internet available',
          status: APIstatus.onError);
    } catch (e) {
      customLog("${e.toString()}");
      homeApiResponse = homeApiResponse?.copyWith(
          loading: false,
          message: 'Something went wrong',
          status: APIstatus.onError);
    }

    notifyListeners();
  }

  searchFn({required String text}) {
    filteredList = homeList?.toList() ?? [];
    filteredList = filteredList
        ?.where((e) => e.name!.toLowerCase().contains(text.toLowerCase()))
        .toList();

    notifyListeners();
  }

  clearSearchFn() {
    filteredList = homeList?.toList();
    notifyListeners();
  }
}
