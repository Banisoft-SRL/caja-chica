part of 'crear_desembolso_bloc.dart';

abstract class CrearDesembolsoEvent extends Equatable {
  const CrearDesembolsoEvent();

  @override
  List<Object?> get props => [];
}

class CrearDesembolso extends CrearDesembolsoEvent {
  final String? rnc;
  final String? beneficiario;
  final String? monto;
  final String? fecha;
  final String? descripcion;
  final String? tipo;
  final String? cuenta;
  final String? banco;
  final String? referencia;
  final String? estado;
  final String? usuario;
  final String? fechaCreacion;
  final String? fechaModificacion;
  final String? usuarioCreacion;
  final String? usuarioModificacion;
  final String? fechaEliminacion;
  final String? usuarioEliminacion;
  final String? estadoRegistro;

  const CrearDesembolso({
    this.rnc,
    this.beneficiario,
    this.monto,
    this.fecha,
    this.descripcion,
    this.tipo,
    this.cuenta,
    this.banco,
    this.referencia,
    this.estado,
    this.usuario,
    this.fechaCreacion,
    this.fechaModificacion,
    this.usuarioCreacion,
    this.usuarioModificacion,
    this.fechaEliminacion,
    this.usuarioEliminacion,
    this.estadoRegistro,
  });

  @override
  List<Object?> get props => [
        rnc,
        beneficiario,
        monto,
        fecha,
        descripcion,
        tipo,
        cuenta,
        banco,
        referencia,
        estado,
        usuario,
        fechaCreacion,
        fechaModificacion,
        usuarioCreacion,
        usuarioModificacion,
        fechaEliminacion,
        usuarioEliminacion,
        estadoRegistro,
      ];
}

class OnBeneficiarioLostFocus extends CrearDesembolsoEvent {
  final String? beneficiario;

  const OnBeneficiarioLostFocus({this.beneficiario});

  @override
  List<Object?> get props => [beneficiario];
}

class OnRncLostFocus extends CrearDesembolsoEvent {
  final String? rnc;

  const OnRncLostFocus({this.rnc});

  @override
  List<Object?> get props => [rnc];
}
