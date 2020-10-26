
import '../domain/entities/product.entity.dart';
import '../domain/models/product.model.dart';
abstract class IProductCrudService {
  Future<String> create(ProductModel productModel);

  Future<String> delete(String id);

  Future<ProductEntity> edit(String id, Map<String, dynamic> data);

  Future<List<ProductEntity>> read();

  Future<ProductEntity> readOme(String id);
}
