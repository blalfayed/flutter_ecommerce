import 'package:dartz/dartz.dart';
import 'package:ecommerce/data/category/models/category.dart';
import 'package:ecommerce/data/category/source/category_firebase_service.dart';
import 'package:ecommerce/domain/category/repository/category.dart';
import 'package:ecommerce/service_locator.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  @override
  Future<Either> getCategories() async {
    var categories = await s1<CategoryFirebaseService>().getCategories();

    return categories.fold((error) {
      return left(error);
    }, (data) {
      return Right(List.from(data)
          .map((e) => CategoryModel.fromMap(e).toEntity())
          .toList());
    });
  }
}
