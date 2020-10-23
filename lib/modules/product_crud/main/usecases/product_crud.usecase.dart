
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../interfaces/i_product_crud.usecase.dart';
import '../protocols/i_product_crud.service.dart';
class ProductCrudUsecase implements IProductCrudUsecase {
	final IProductCrudService service;
	ProductCrudUsecase(
		{
			@required this.service
		}
	);
}
