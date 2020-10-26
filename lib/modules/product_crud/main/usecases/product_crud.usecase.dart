
import 'package:meta/meta.dart';

import '../domain/entities/product.entity.dart';
import '../domain/models/product.model.dart';
import '../interfaces/i_product_crud.usecase.dart';
import '../protocols/i_product_crud.service.dart';
class ProductCrudUsecase implements IProductCrudUsecase {
	final IProductCrudService service;
	ProductCrudUsecase(
		{
			@required this.service
		}
	);

  @override
  Future<String> create({ProductModel productModel}) {
      return service.create(productModel);
    }
  
    @override
    Future<String> delete({String id}) {
      return service.delete(id);
    }
  
    @override
    Future<ProductEntity> edit({String id, Map<String, dynamic> data}) {
      return service.edit(id, data);
    }
  
    @override
    Future<List<ProductEntity>> read() {
      return service.read();
    }
  
    @override
    Future<ProductEntity> readOne({String id}) {
    return service.readOme(id);
  }
}
