
import 'package:meta/meta.dart';
import '../../main/protocols/i_product_crud.service.dart';
import '../protocols/i_product_crud.datasource.dart';
class ProductCrudService implements IProductCrudService {
	final IProductCrudDatasource datasource;
	ProductCrudService(
		{
			@required this.datasource
		}
	);

}
