import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/core/failures/main_failure.dart';
import 'package:test_app/data/api/api_URL.dart';
import 'package:test_app/data/models/categories/categories.dart';
import 'package:test_app/data/models/products/products.dart';
import 'package:test_app/repository/HomeRepository/HomeRepo.dart';

@LazySingleton(as: IHomeFacade)
class HomeFacade implements IHomeFacade {
  @override
  Future<Either<MainFailure, List<Products>>> getcategories() async {
    // TODO: implement getcategories
    try {
      final response = await Dio(BaseOptions()).get(URLConstants.products);
      print("calling categories");

      if (response.statusCode == 200 || response.statusCode == 201) {
        Iterable models = response.data;
        List<Products> dataModels = [];

        for (var model in models) {
          Products dataModel = Products.fromJson(model);
          dataModels.add(dataModel);
        }

        return Right(dataModels);
      } else if (response.statusCode == 401) {
        return const Left(MainFailure.serverFailure());
      } else {
        return const Left(MainFailure.serverFailureelse());
      }
    } catch (e) {
      if (e is DioException && e.response?.statusCode == 401) {
        return const Left(MainFailure.serverFailure());
      } else {
        return const Left(MainFailure.serverFailureelse());
      }
    }
  }
}
