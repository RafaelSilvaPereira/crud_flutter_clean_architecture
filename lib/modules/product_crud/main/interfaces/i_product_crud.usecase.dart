import '../domain/index.dart';

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

abstract class IProductCrudUsecase {
  Future<bool> call(ProductEntity p);
}

main() {}
