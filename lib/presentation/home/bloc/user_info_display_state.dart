import 'package:ecommerce/domain/auth/entity/user.dart';

class UserInfoDisplayState {}

class UserInfoLoading extends UserInfoDisplayState {}

class UserInfoLoaded extends UserInfoDisplayState {
  final UserEntity user;

  UserInfoLoaded({required this.user});
}

class LoadUserInfoFailure extends UserInfoDisplayState {}
