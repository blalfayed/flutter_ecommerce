import 'package:ecommerce/core/usecase/usecase.dart';
import 'package:ecommerce/domain/auth/repository/auth.dart';

import '../../../service_locator.dart';

class IsLoggedInUseCase implements UseCase<bool, dynamic> {
  @override
  Future<bool> call({params}) async {
    return await s1<AuthRepository>().isLoggedIn();
  }
}
