import 'package:meta/meta.dart';

import '../../main/domain/entities/product.entity.dart';
import '../../main/domain/models/product.model.dart';
import '../../main/protocols/i_product_crud.service.dart';
import '../protocols/i_product_crud.datasource.dart';

class ProductCrudService implements IProductCrudService {
  final IProductCrudDatasource datasource;

  const ProductCrudService({
    @required this.datasource,
  });

  @override
  Future<String> create(ProductModel productModel) async {
    String createResponse;
    int datasourceResponse = await datasource.create(productModel.toMap);
    switch (datasourceResponse) {
      case (200):
        createResponse = 'OK :D';
        break;
      case (201):
        createResponse = 'Cliente Criado!! C: ';
        break;
      default:
        createResponse = 'Error';
    }

    return createResponse;
  }

  @override
  Future<String> delete(String id) async {
    String deleteResponse;
    int datasourceResponse = await datasource.delete(id);

    switch (datasourceResponse) {
      case (200):
        deleteResponse = 'OK :D';
        break;
      default:
        deleteResponse = 'Error';
    }

    return deleteResponse;
  }

  @override
  Future<ProductEntity> edit(String idp, Map<String, dynamic> data) async {
    final datasourceResponse = await datasource.edit(idp, data);

    return ProductModel.fromMap(datasourceResponse);
  }

  @override
  Future<List<ProductEntity>> read() async {
    final List datasoucesResponse = await datasource.read();
    if (datasoucesResponse == null || datasoucesResponse.length == 0)
      throw Exception('Lista vazia');
    return datasoucesResponse.map((e) => ProductModel.fromMap(e)).toList();
  }

  @override
  Future<ProductEntity> readOme(String id) async {
    final datasoucesResponse = await datasource.readOne(id);
    if (datasoucesResponse == null) throw Exception('Registro não encontrado');

    return ProductModel.fromMap(datasoucesResponse);
  }
}
