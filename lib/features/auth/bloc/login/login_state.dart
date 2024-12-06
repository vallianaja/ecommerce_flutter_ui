part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {

  final AuthResponseModel authResponseModel;

  LoginSuccess({required this.authResponseModel});
}

final class LoginFailure extends LoginState {

  final String message;

  LoginFailure({required this.message});
}


