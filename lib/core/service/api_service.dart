import 'dart:io';

import 'package:http/http.dart' as http;

import '../api/app_exception.dart';
import 'base_service.dart';

class ApiService extends BaseService {
  @override
  Future getResponse(
      {required Map<String, dynamic> parametrs, required String url}) async {
    Uri urlComplete = Uri.parse(baseUrl + url);

    Map<String, String> headers = Map<String, String>.from(parametrs);
    try {
      http.Response response =
          await http.get(urlComplete, headers: headers).timeout(
                const Duration(seconds: 15),
                onTimeout: () => http.Response("Time Out", 408),
              );
      return response;
    } on SocketException {
      throw FetchDataException("sem conexão com a internet.");
    }
  }
}
