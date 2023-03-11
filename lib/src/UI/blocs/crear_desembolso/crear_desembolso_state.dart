part of 'crear_desembolso_bloc.dart';

class CrearDesembolsoState extends Equatable {
  const CrearDesembolsoState({
    this.beneficiario = const BeneficiarioInput.pure(),
    this.rnc = const RncInput.pure(),
    this.status = FormzSubmissionStatus.initial,
  });

  final BeneficiarioInput? beneficiario;
  final RncInput? rnc;
  final FormzSubmissionStatus status;

  CrearDesembolsoState copyWith({
    BeneficiarioInput? beneficiario,
    RncInput? rnc,
    FormzSubmissionStatus? status,
  }) {
    return CrearDesembolsoState(
      beneficiario: beneficiario ?? this.beneficiario,
      rnc: rnc ?? this.rnc,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [status, beneficiario, rnc];
}
