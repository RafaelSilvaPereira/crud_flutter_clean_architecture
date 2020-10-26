import 'package:meta/meta.dart';

import '../domain/index.dart';
import '../domain/models/product.model.dart';

abstract class IProductCrudUsecase {
  Future<String> create({@required ProductModel productModel});
  Future<List<ProductEntity>> read();
  Future<ProductEntity> readOne({@required String id});
  Future<ProductEntity> edit({@required String id, Map<String, dynamic> data});
  Future<String> delete({@required String id});
}
