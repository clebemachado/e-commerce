import 'dart:developer';

import 'package:story_app/core/models_fake/category_fake.dart';
import 'package:story_app/core/models_fake/product_model_fake.dart';

import '../dados_faker.dart';

class Products {
  
  Product popPost = Product.fromJson(popularPost);
  
  List<Product> _products = [];
  List<Categoria> categoria = [];

  List<Product> get productsLista => _products;

  setProducts(List<Product> products, List<Categoria> categorias) {
    _products = products;
    categoria = categorias;

    var teste = products.where((element) => element.popular);

    log("TESTE " + teste.toString());
  }

  @override
  String toString() => 'Products(_products: $_products, categorys: $categoria)';
}
