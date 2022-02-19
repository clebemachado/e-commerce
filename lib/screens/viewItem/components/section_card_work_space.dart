import 'package:flutter/material.dart';

import 'package:story_app/core/models_fake/category_fake.dart';

import '../../../size_config.dart';

class SectionCardWorkSpace extends StatelessWidget {
  const SectionCardWorkSpace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Categoria> categorias = categoriaFromJson();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(left: getWidth(24)),
        child: Row(
          children: [
            ...List.generate(
              categorias.length,
              (index) => Container(
                margin: EdgeInsets.only(right: getWidth(21)),
                width: getWidth(220),
                decoration: decorator(),
                child: CardWordSpace(categoria: categorias[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration decorator() {
    return BoxDecoration(
      color: const Color(0xffF4F5F7),
      borderRadius: BorderRadius.circular(getWidth(8)),
    );
  }
}

class CardWordSpace extends StatelessWidget {
  const CardWordSpace({
    Key? key,
    required this.categoria,
  }) : super(key: key);

  final Categoria categoria;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(getWidth(8)),
            width: getWidth(68),
            height: getWidth(65),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                categoria.imagem,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getWidth(8)),
                Text(
                  categoria.text,
                  style: TextStyle(
                    fontSize: getWidth(16),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: getWidth(5)),
                Text(
                  "${categoria.sugestores} suggested item",
                  style: TextStyle(
                    color: const Color(0xffA6A798),
                    fontWeight: FontWeight.w500,
                    fontSize: getWidth(12),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
