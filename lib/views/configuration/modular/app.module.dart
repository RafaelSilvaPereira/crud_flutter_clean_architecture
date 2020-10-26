import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../modules/product_crud/index.dart';
import '../../product_crud/pages/create_product.page.dart';
import '../styles/index.dart';
import 'app.widget.dart';

class AppModule extends MainModule {
// Provide a list of dependencies to inject into your project
  @override
  List<Bind> get binds => [
        Bind((_) => HttpDatasource()),
        Bind((datasource) => ProductCrudService(datasource: datasource())),
        Bind((service) => ProductCrudUsecase(service: service())),
        ...styleBinds,
      ];

  final styleBinds = [
    Bind(
      (_) => StyleSet.fromMap(globalStyleSet),
    ),
    Bind((_) => ScreenData()),
    Bind(
      (_) => StyleGuide.fromMap(
        builder: {
          'app-bar': {
            'bg-colors': {'primary': Colors.purple}
          },
          'inputs': {
            'internal-height': {
              'i-h1': '10h',
              'i-h2': '15h',
            },
            'internal-width': {'i-w1': '10w', 'i-w2': '15w'},
            'colors': {
              'primary': Colors.red,
            },
            'bg-colors': {
              'primary': Colors.blue,
            }
          },
        },
      ),
    ),
  ];
// Provide all the routes for your module
  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => CreateProductPage()),
      ];

// Provide the root widget associated with your module
// In this case, it's the widget you created in the first step
  @override
  Widget get bootstrap => AppWidget();
}
