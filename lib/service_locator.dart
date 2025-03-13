import 'package:ecommerce/data/auth/repository/auth_repository_impl.dart';
import 'package:ecommerce/data/auth/source/auth_firebase_service.dart';
import 'package:ecommerce/domain/auth/repository/auth.dart';
import 'package:ecommerce/domain/auth/usecases.dart/get_ages.dart';
import 'package:ecommerce/domain/auth/usecases.dart/send_password_reset_email.dart';
import 'package:ecommerce/domain/auth/usecases.dart/signin.dart';
import 'package:ecommerce/domain/auth/usecases.dart/signup.dart';
import 'package:get_it/get_it.dart';

final s1 = GetIt.instance;

Future<void> initializeDependencies() async {
  s1.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  s1.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  s1.registerSingleton<SignupUseCase>(SignupUseCase());

  s1.registerSingleton<GetAgesUseCase>(GetAgesUseCase());
  s1.registerSingleton<SigninUseCase>(SigninUseCase());
  s1.registerSingleton<SendPasswordResetEmailUseCase>(
      SendPasswordResetEmailUseCase());
}
