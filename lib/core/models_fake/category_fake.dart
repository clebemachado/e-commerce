import 'dart:convert';

import '../dados_faker.dart';

List<Categoria> categoriaFromJson() => categoriasFake
    .map(
      (e) => Categoria.fromJson(e),
    )
    .toList();

String categoriaToJson(List<Categoria> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Categoria {
  Categoria({
    required this.id,
    required this.imagem,
    required this.text,
    required this.sugestores,
  });

  int id;
  String imagem;
  String text;
  int sugestores;

  factory Categoria.fromJson(Map<String, dynamic> json) => Categoria(
        id: json["id"],
        imagem: json["imagem"],
        text: json["text"],
        sugestores: json["sugestores"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "imagem": imagem,
        "text": text,
        "sugestores": sugestores,
      };
}
