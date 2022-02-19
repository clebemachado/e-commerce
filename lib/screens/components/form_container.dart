import 'package:flutter/material.dart';

import '../../size_config.dart';

class FormContainer extends StatelessWidget {
  const FormContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: getWidth(8),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffF6F6F5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: child,
        ),
      ],
    );
  }
}