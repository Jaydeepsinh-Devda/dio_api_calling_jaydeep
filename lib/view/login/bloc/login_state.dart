import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object?> get props => [];
}

class LoginInitialState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {
  final String token;

  const LoginSuccessState({
    required this.token,
  });

  @override
  List<Object?> get props => [token];
}

class LoginFailureState extends LoginState {
  final String error;

  const LoginFailureState({
    required this.error,
  });

  @override
  List<Object?> get props => [error];
}
