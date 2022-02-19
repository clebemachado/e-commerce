import 'package:flutter/material.dart';

import '../../constants.dart';

class AppBarCustomer extends PreferredSize {
  const AppBarCustomer(
      {Size preferredSize = const Size.fromHeight(kToolbarHeight),
      required Widget child,
      Key? key})
      : super(child: child, preferredSize: preferredSize, key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingBase,
      child: child,
    );
  }
}
