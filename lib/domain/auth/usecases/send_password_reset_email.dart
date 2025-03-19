import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/usecase/usecase.dart';
import 'package:ecommerce/domain/auth/repository/auth.dart';

import '../../../service_locator.dart';

class SendPasswordResetEmailUseCase implements UseCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return s1<AuthRepository>().sendPasswordandResetEmail(params!);
  }
}
