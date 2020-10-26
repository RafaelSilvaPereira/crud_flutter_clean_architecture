import 'package:crud_flutter_clean_architecture/views/product_crud/controllers/create_product.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../modules/product_crud/index.dart';

import '../../configuration/styles/index.dart';
import '../widgets/text_input.widget.dart';

class CreateProductPage extends StatelessWidget {
  final ScreenData sd = Modular.get<ScreenData>();
  final StyleGuide sg = Modular.get<StyleGuide>();
  final controller =
      CreateProductController(Modular.get<IProductCrudUsecase>());
  @override
  Widget build(BuildContext context) {
    
    sd.init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sg.get('app-bar > bg-colors : primary'),
        centerTitle: true,
        title: Text('Criação de produto'),
      ),
      body: Column(
        children: [
          TextInput(
            onChanged: controller.product.setid,
            placeholder: 'id',
            screenData: sd,
            styleGuide: sg,
          ),
          TextInput(
            onChanged: (String value) {
              controller.product.setpreco(double.parse(value));
            },
            placeholder: 'preco',
            screenData: sd,
            styleGuide: sg,
          ),
          RaisedButton(
            
            onPressed: () {  },
            child: Text('Registrar Produto'),
          ),
        ],
      ),
    );
  }
}
