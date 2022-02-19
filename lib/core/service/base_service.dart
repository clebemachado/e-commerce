abstract class BaseService {
  final String baseUrl = "https://fakestoreapi.com";

  Future<dynamic> getResponse(
      {required Map<String, dynamic> parametrs, required String url});
}
