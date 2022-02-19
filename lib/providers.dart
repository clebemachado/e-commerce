import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'modelviews/product_provider/product_provider.dart';

List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => ProductProvider(),),
  ];