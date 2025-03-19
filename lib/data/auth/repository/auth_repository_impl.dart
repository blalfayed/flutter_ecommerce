import 'package:dartz/dartz.dart';
import 'package:ecommerce/data/auth/models/user.dart';
import 'package:ecommerce/data/auth/models/user_creation_req.dart';
import 'package:ecommerce/data/auth/models/user_signin_req.dart';
import 'package:ecommerce/data/auth/source/auth_firebase_service.dart';
import 'package:ecommerce/domain/auth/repository/auth.dart';

import '../../../service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signup(UserCreationReq user) async {
    return await s1<AuthFirebaseService>().signup(user);
  }

  @override
  Future<Either> getAges() async {
    return await s1<AuthFirebaseService>().getAges();
  }

  @override
  Future<Either> signin(UserSigninReq user) async {
    return await s1<AuthFirebaseService>().signin(user);
  }

  @override
  Future<Either> sendPasswordandResetEmail(String email) async {
    return await s1<AuthFirebaseService>().sendPasswordandResetEmail(email);
  }

  @override
  Future<bool> isLoggedIn() async {
    return await s1<AuthFirebaseService>().isLoggedIn();
  }

  @override
  Future<Either> getUser() async {
    var user = await s1<AuthFirebaseService>().getUser();

    return user.fold((error) {
      return left(error);
    }, (data) {
      return Right(UserModel.fromMap(data).toEntity());
    });
  }
}
