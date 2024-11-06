import 'package:dartz/dartz.dart';
import 'package:test_app/core/failures/main_failure.dart';
import 'package:test_app/data/models/categories/categories.dart';
import 'package:test_app/data/models/products/products.dart';

abstract class IHomeFacade {
  Future<Either<MainFailure, List<Products>>> getcategories();
}
