import 'package:ecommerce/domain/auth/usecases/is_logged_in.dart';
import 'package:ecommerce/presentation/splash/bloc/splash_state.dart';
import 'package:ecommerce/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  void appStarted() async {
    var isLoggedIn = await Future.delayed(const Duration(seconds: 2));
    await sl<IsLoggedInUseCase>().call();
    if (isLoggedIn) {
      emit(Authenticated());
    } else {
      emit(UnAuthenticated());
    }
  }
}
