import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:story_app/core/api/api_response.dart';
import 'package:story_app/core/models/product_list.dart';

import 'product_fetch.dart';

class ProductProvider extends ChangeNotifier {
  void init() {
    /// ```dart
    /// Essa funçao é resposável pela incialização da aquisição dos dados;
    /// Poderia criar um construtor para pegar os dados asssim que a aplicação
    /// fosse incializada, mas quis deixar assim.
    /// ```
    fetchData();
  }

  void limparDados() {
    /// ```dart
    /// Essa funçao é para limpar os dados quando o usuário voltar para tela
    /// de login ou sair do aplicativo.
    /// ```
    _apiResponse = ApiResponse.initial("Iniciando API");
    productsFetch.close();
  }

  /// ```dart
  /// #############  Configuração dos estados do provider. #################
  /// ```

  ApiResponse _apiResponse = ApiResponse.initial("Iniciando API");

  Status get getStatus => _apiResponse.status;

  String get messageApi => _apiResponse.message ?? "";

  Products get products => _apiResponse.data ?? [];

  /// ```dart
  /// ##############FASE DE AQUISIÇÃO DOS DADOS ##################
  /// ```

  ProductsFetch productsFetch = ProductsFetch();

  fetchData() async {
    /// ```dart
    /// Essa funçao faz a conexão com o repository, que ficará responsável
    /// por se comunicar com a nossa API.
    /// ```

    _apiResponse = ApiResponse.loading("Carregando os dados");
    notifyListeners();
    log("HI");
    try {
      await productsFetch.getDados();
      _apiResponse = ApiResponse.completed(productsFetch.products);
    } catch (e) {
      _apiResponse = ApiResponse.error(e.toString());
    }

    notifyListeners();
  }
}
