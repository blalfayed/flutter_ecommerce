import 'package:ecommerce/data/auth/repository/auth_repository_impl.dart';
import 'package:ecommerce/data/auth/source/auth_firebase_service.dart';
import 'package:ecommerce/domain/auth/repository/auth.dart';
import 'package:ecommerce/domain/auth/usecases.dart/get_ages.dart';
import 'package:ecommerce/domain/auth/usecases.dart/signup.dart';
import 'package:get_it/get_it.dart';

final s1 = GetIt.instance;

Future<void> initializeDependencies() async {
  s1.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  s1.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  s1.registerSingleton<SignupUseCase>(SignupUseCase());

  s1.registerSingleton<GetAgesUseCase>(GetAgesUseCase());
}
