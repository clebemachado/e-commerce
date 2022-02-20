import 'package:flutter/material.dart';

import 'components/body.dart';

class WorkSpaces extends StatelessWidget {
  static String routeName = "/workspaces";
  const WorkSpaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Explores Workspace",
        ),
      ),
      body: Body(),
    );
  }
}
