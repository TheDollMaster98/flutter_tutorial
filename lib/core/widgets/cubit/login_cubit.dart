import 'package:flutter_bloc/flutter_bloc.dart';

class LoginState {
  final String? email;
  final String? password;

  const LoginState({this.email, this.password});

  LoginState copyWith({String? email, String? password}) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  void login(String email, String password) {
    emit(LoginState(email: email.trim(), password: password.trim()));
  }

  void reset() {
    emit(const LoginState());
  }
}
