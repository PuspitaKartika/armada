import 'package:armada/bloc/login/login_state.dart';
import 'package:armada/repositories/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInit());

  void login({required String name, required String password}) async {
    try {
      emit(LoginLoading());
      final data = await AuthRepo().login(name: name, password: password);
      emit(LoginSuccess(jwt: data.jwt?.toString() ?? "ga ada"));
    } catch (e) {
      emit(LoginFailed(message: e.toString()));
    }
  }
}
