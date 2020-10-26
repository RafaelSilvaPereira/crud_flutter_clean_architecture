

abstract class IProductCrudDatasource {
  Future<int> create(Map<String, dynamic> toMap);

  Future<int> delete(String id);

  Future<Map<String, dynamic>> edit(String idp, Map<String, dynamic> data);

  Future<List<Map<String, dynamic>>> read();

  Future<Map<String, dynamic>> readOne(String id);
	
}
