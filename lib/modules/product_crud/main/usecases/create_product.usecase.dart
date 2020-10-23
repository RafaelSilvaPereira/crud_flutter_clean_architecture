import 'package:crud_flutter_clean_architecture/modules/product_crud/main/domain/entities/product.entity.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../interfaces/i_product_crud.usecase.dart';
import '../protocols/i_product_crud.service.dart';

class ProductCrudUsecase implements IProductCrudUsecase {
  final IProductCrudService service;
  ProductCrudUsecase({@required this.service});

  @override
  Future<bool> call(ProductEntity p) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

class SpecialProductEntity extends ProductEntity {
  final desconto;

  SpecialProductEntity(this.desconto);
}


class SpecialProductCrudUsecase implements IProductCrudUsecase {
  final IProductCrudService service;
  SpecialProductCrudUsecase({@required this.service});

  @override
  Future<bool> call(ProductEntity p) {
    
  }
}


