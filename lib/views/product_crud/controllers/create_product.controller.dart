import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../modules/product_crud/index.dart';
import '../view_models/product.view_mode.dart';

part 'create_product.controller.g.dart';

class CreateProductController = _CreateProductControllerBase
    with _$CreateProductController;

abstract class _CreateProductControllerBase with Store {
  IProductCrudUsecase productCrudUC;
  _CreateProductControllerBase(this.productCrudUC);
  Product product = Product();

  @action
  createButtonOnClick(BuildContext context) async {
    final model = product.model;
    await productCrudUC.create(productModel: model);
  }

  @computed
  bool get  activeButton => product != null && product.id.isNotEmpty && product.fabricacao != null && product.validade != null && product.preco > 0;
}
