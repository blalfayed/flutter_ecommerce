import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/usecase/usecase.dart';

import '../../../service_locator.dart';
import '../repository/auth.dart';

class GetUserUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<AuthRepository>().getUser();
  }
}
