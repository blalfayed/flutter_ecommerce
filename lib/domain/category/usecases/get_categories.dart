import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/usecase/usecase.dart';
import 'package:ecommerce/domain/category/repository/category.dart';

import '../../../service_locator.dart';

class GetCategoriesUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await s1<CategoryRepository>().getCategories();
  }
}
