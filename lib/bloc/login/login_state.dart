import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object?> get props => [];
}

class LoginInit extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final String jwt;

  const LoginSuccess({required this.jwt});
}

class LoginFailed extends LoginState {
  final String message;
  const LoginFailed({required this.message});

  @override
  List<Object?> get props => [];
}
