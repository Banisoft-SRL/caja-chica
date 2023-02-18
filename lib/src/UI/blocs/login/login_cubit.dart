import 'package:bloc/bloc.dart';
import 'package:caja_chica/src/core/interfaces/iapi_client.dart';
import 'package:caja_chica/src/data/models/cajca_chica.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../core/utils/endpoints.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required IAPiClient apiClient})
      : _apiClient = apiClient,
        super(const LoginState());

  final IAPiClient _apiClient;

  Future<void> login(String username, String password) async {
    emit(state.copyWith(status: LoginStatus.loading));
    try {
      // final response = await _apiClient.postRequest<CajaChica>(
      //     Endpoints.validateUser, {"username": username, "password": password});
      await Future.delayed(const Duration(seconds: 2));
      emit(state.copyWith(status: LoginStatus.success));
      // if (!response.isSuccess!) {
      //   return;
      // }
    } catch (e) {
      emit(state.copyWith(status: LoginStatus.error, message: e.toString()));
    }
  }
}
