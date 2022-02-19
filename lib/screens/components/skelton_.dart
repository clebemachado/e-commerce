import 'package:flutter/material.dart';

import '../../size_config.dart';

class Skelton extends StatelessWidget {
  const Skelton({
    Key? key,
    required this.width,
    required this.height,
    this.child = const SizedBox(),
  }) : super(key: key);

  final double width;
  final double height;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 3),
      width: width,
      height: height,
      padding: EdgeInsets.all(getWidth(8)),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.04),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: child,
    );
  }
}
