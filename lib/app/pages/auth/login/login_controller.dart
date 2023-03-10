import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dart_week_app/app/core/exceptions/unauthorized_exception.dart';
import 'package:dart_week_app/app/pages/auth/login/login_state.dart';
import 'package:dart_week_app/app/repositories/auth/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends Cubit<LoginState> {
  final AuthRepository _authRepository;

  LoginController(this._authRepository) : super(const LoginState.initial());

  Future<void> login(String email, String password) async {
    try {
      emit(state.copyWith(status: LoginStatus.login));

      final authModel = await _authRepository.login(email, password);

      final sp = await SharedPreferences.getInstance();

      sp.setString("accessToken", authModel.accessToken);
      sp.setString("refreshToken", authModel.refreshToken);

      emit(state.copyWith(status: LoginStatus.success));
    } on UnauthorizedExcepion catch (e, s) {
      log("Login ou/e senha errados", error: e, stackTrace: s);
      emit(state.copyWith(status: LoginStatus.loginError, errorMessage: "Login ou/e senha errados"));
    } catch (e, s) {
      log("Ocorreu um erro ao realizar login", error: e, stackTrace: s);
      emit(state.copyWith(status: LoginStatus.error, errorMessage: "Ocorreu um erro ao realizar login"));
    }
  }
}
