import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:caja_chica/src/core/interfaces/iapi_client.dart';
import 'package:caja_chica/src/core/interfaces/icache_service.dart';
import 'package:caja_chica/src/core/utils/constants.dart';
import 'package:caja_chica/src/data/models/caja_chica.dart';
import 'package:database_helper/src/sqlite_database.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../core/utils/endpoints.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
      {required IAPiClient apiClient,
      required ICacheService cacheService,
      required SqliteDatabaseImp database})
      : _apiClient = apiClient,
        _cacheService = cacheService,
        _database = database,
        super(const LoginState());

  final IAPiClient _apiClient;
  final ICacheService _cacheService;
  final SqliteDatabaseImp _database;
  Future<void> login(
      {required String username, required String password}) async {
    emit(state.copyWith(status: LoginStatus.loading));
    try {
      final currentUser = await _cacheService.get<String>(currentUserName);

      //* default user will use if not user was logged in
      if (currentUser == null) {
        final result = username.trim().toUpperCase() == 'ADMIN' &&
            password.trim().toUpperCase() == 'RUBBERTAPE';

        emit(state.copyWith(
            status: result ? LoginStatus.success : LoginStatus.error,
            message: result ? '' : 'Usuario o contraseña incorrectos'));
        return;
      }

      final sql =
          "SELECT admusr_password FROM madmusr  WHERE admusr_codigo = ${username.toLowerCase().trim()}";
      final userPassword = await _database.query(sql);
      if (userPassword.isEmpty) {
        emit(state.copyWith(
            status: LoginStatus.error,
            message: 'Usuario o contraseña incorrectos'));
        return;
      }
      if (userPassword.first['admusr_password'] !=
          ascii.encode(password.toLowerCase().trim())) {
        emit(state.copyWith(
            status: LoginStatus.error,
            message: 'Usuario o contraseña incorrectos'));
        return;
      }

      emit(state.copyWith(status: LoginStatus.success));
    } catch (e) {
      emit(state.copyWith(status: LoginStatus.error, message: e.toString()));
    }
  }
}
