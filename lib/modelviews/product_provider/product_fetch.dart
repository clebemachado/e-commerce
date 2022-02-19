
import 'package:story_app/core/models_fake/category_fake.dart';

import '../../core/dados_faker.dart';
import '../../core/models/product_list.dart';
import '../../core/models_fake/product_model_fake.dart';

Future<List<Map<String, dynamic>>> getDadosProdutos() async {
  await Future.delayed(const Duration(seconds: 3));

  return produtosGerais;
}

Future<List<Map<String, dynamic>>> getDadosCategoria() async {
  await Future.delayed(const Duration(seconds: 3));

  return categoriasFake;
}

class ProductsFetch {
  String urlBase = "/products/";

  void close() {
    products = Products();
  }

  Products products = Products();

  Future<void> getDados() async {
    /// ```dart
    /// Essa funçao faz a conexão com o repository e atualiza a lista de produtos
    /// ```
    try {
      List<Map<String, dynamic>> bodyProdutos = await getDadosProdutos();
      List<Product> listaProducts = [];

      for (int i = 0; i < bodyProdutos.length; i++) {
        Product prod = Product.fromJson(bodyProdutos[i]);
        listaProducts.add(prod);
      }

      List<Map<String, dynamic>> bodyCategorias = await getDadosCategoria();
      List<Categoria> listaCategoria = [];

      for (int i = 0; i < bodyCategorias.length; i++) {
        Categoria cat = Categoria.fromJson(bodyCategorias[i]);
        listaCategoria.add(cat);
      }

      listaProducts.shuffle();
      listaCategoria.shuffle();

      // String body =
      //     await ProdutoRepository().fetchDados(url: urlBase, parametros: {});

      products.setProducts(listaProducts, listaCategoria);
    } catch (e) {
      //
    }
  }
}
