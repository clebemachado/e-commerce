
import 'package:http/http.dart';
import 'package:story_app/core/api/app_exception.dart';
import 'package:story_app/core/service/base_service.dart';

import '../service/api_service.dart';

class ProdutoRepository {
  final BaseService _baseService = ApiService();

  Future fetchDados(
      {required String url, required Map<String, dynamic> parametros}) async {
    final Response response =
        await _baseService.getResponse(url: url, parametrs: parametros);

    switch (response.statusCode) {
      case 200:
        return response.body;
      default:
        throw ErroDesconhecidoException("Ops!");
    }
  }
}
