import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import 'card_workspace_skelton.dart';

class WorkSpaceSkelton extends StatelessWidget {
  const WorkSpaceSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getWidth(32)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            4,
            (index) => Padding(
              padding: EdgeInsets.only(right: getWidth(32)),
              child: const CardWorkspacesSkelton(),
            ),
          ),
        ),
      ),
    );
  }
}
