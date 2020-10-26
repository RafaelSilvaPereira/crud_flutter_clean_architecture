
import '../../adapter/protocols/i_product_crud.datasource.dart';
import '../../index.dart';

class HttpDatasource implements IProductCrudDatasource {
  @override
  Future<int> create(Map<String, dynamic> toMap) async {
    return 201;
  }

  @override
  Future<int> delete(String id) async {
    return 200;
  }

  @override
  Future<Map<String, dynamic>> edit(
      String idp, Map<String, dynamic> data) async {
    return data;
  }

  @override
  Future<List<Map<String, dynamic>>> read() async {
    return [
      {
        'id': '10',
        'validade': DateTime(2030),
        'fabricacao': DateTime(2020),
        'preco': 200,
      },
      {
        'id': '11',
        'validade': DateTime(2021),
        'fabricacao': DateTime(2020),
        'preco': 10,
      }
    ];
  }

  @override
  Future<Map<String, dynamic>> readOne(String id) async {
    if (id == '12')
      return {
        'id': '12',
        'validade': DateTime(2021),
        'fabricacao': DateTime(2020),
        'preco': 10,
      };
    else return null;
  }
}
