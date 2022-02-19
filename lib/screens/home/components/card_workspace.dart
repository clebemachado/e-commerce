import 'package:flutter/material.dart';

import '../../../core/models_fake/category_fake.dart';
import '../../../size_config.dart';

class CardWorkspace extends StatelessWidget {
  const CardWorkspace({
    Key? key,
    required this.categorias,
  }) : super(key: key);

  final List<Categoria> categorias;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getWidth(24)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categorias.length,
            (index) => Padding(
              padding: EdgeInsets.only(right: getWidth(24)),
              child: Container(
                width: getWidth(136),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffF4F5F7),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getWidth(8),
                        top: getWidth(8),
                        right: getWidth(8),
                        bottom: getWidth(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          categorias[index].imagem,
                          width: getWidth(120),
                          height: getWidth(105),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      categorias[index].text,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: getWidth(16),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: getWidth(4)),
                    Text(
                      "${categorias[index].sugestores} Suggested items",
                      style: TextStyle(
                        fontSize: getWidth(11), // melhor 11
                        color: const Color(0xffA6A798),
                      ),
                    ),
                    SizedBox(height: getWidth(12)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
