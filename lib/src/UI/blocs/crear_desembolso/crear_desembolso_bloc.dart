import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:caja_chica/src/core/formz_validators.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'crear_desembolso_event.dart';
part 'crear_desembolso_state.dart';

class CrearDesembolsoBloc
    extends Bloc<CrearDesembolsoEvent, CrearDesembolsoState> {
  CrearDesembolsoBloc() : super(const CrearDesembolsoState()) {
    on(_onBeneficiarioChange);
    on(_onRncLostFocus);
  }

  void _onBeneficiarioChange(
      OnBeneficiarioLostFocus event, Emitter<CrearDesembolsoState> emit) {
    final beneficiario = BeneficiarioInput.dirty(event.beneficiario ?? '');

    emit(state.copyWith(
      beneficiario: beneficiario,
    ));
  }

  FutureOr<void> _onRncLostFocus(OnRncLostFocus event, Emitter<CrearDesembolsoState> emit) {
    final rnc = RncInput.dirty(event.rnc ?? '');

    emit(state.copyWith(
      rnc: rnc,
    ));
  }
}
