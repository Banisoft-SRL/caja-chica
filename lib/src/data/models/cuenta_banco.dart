import 'package:caja_chica/src/data/models/model_factory.dart';

import '../../core/interfaces/imodel_factory.dart';

class CuentaBanco implements IModelFactory<CuentaBanco> {
  int? companiaCodigo;
  int? sucursalCodigo;
  String? codigo;
  String? nombre;
  String? numCuentaBanco;
  String? codigoBanco;
  String? nombreOficialCuenta;
  String? moneda;
  double? balance;
  String? cuentaContable;
  int? estado;
  int? formatoCheque;
  int? esCajaChica;
  int? numReporte;
  String? codigoNomina;
  Null? cuentaDeposito;
  int? archivoNomina;

  CuentaBanco(
      {this.companiaCodigo,
      this.sucursalCodigo,
      this.codigo,
      this.nombre,
      this.numCuentaBanco,
      this.codigoBanco,
      this.nombreOficialCuenta,
      this.moneda,
      this.balance,
      this.cuentaContable,
      this.estado,
      this.formatoCheque,
      this.esCajaChica,
      this.numReporte,
      this.codigoNomina,
      this.cuentaDeposito,
      this.archivoNomina});

  CuentaBanco.fromJson(Map<String, dynamic> json) {
    companiaCodigo = json['companiaCodigo'];
    sucursalCodigo = json['sucursalCodigo'];
    codigo = json['codigo'];
    nombre = json['nombre'];
    numCuentaBanco = json['numCuentaBanco'];
    codigoBanco = json['codigoBanco'];
    nombreOficialCuenta = json['nombreOficialCuenta'];
    moneda = json['moneda'];
    balance = json['balance'];
    cuentaContable = json['cuentaContable'];
    estado = json['estado'];
    formatoCheque = json['formatoCheque'];
    esCajaChica = json['esCajaChica'];
    numReporte = json['numReporte'];
    codigoNomina = json['codigoNomina'];
    cuentaDeposito = json['cuentaDeposito'];
    archivoNomina = json['archivoNomina'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['companiaCodigo'] = this.companiaCodigo;
    data['sucursalCodigo'] = this.sucursalCodigo;
    data['codigo'] = this.codigo;
    data['nombre'] = this.nombre;
    data['numCuentaBanco'] = this.numCuentaBanco;
    data['codigoBanco'] = this.codigoBanco;
    data['nombreOficialCuenta'] = this.nombreOficialCuenta;
    data['moneda'] = this.moneda;
    data['balance'] = this.balance;
    data['cuentaContable'] = this.cuentaContable;
    data['estado'] = this.estado;
    data['formatoCheque'] = this.formatoCheque;
    data['esCajaChica'] = this.esCajaChica;
    data['numReporte'] = this.numReporte;
    data['codigoNomina'] = this.codigoNomina;
    data['cuentaDeposito'] = this.cuentaDeposito;
    data['archivoNomina'] = this.archivoNomina;
    return data;
  }

  @override
  CuentaBanco fromJsonModel(Map<String, dynamic> json) =>
      CuentaBanco.fromJson(json);

  @override
  List<CuentaBanco> fromJsonModelList(Object? json) {
    if (json == null) return [];
    if (json is List) {
      return json.map((e) => CuentaBanco.fromJson(e)).toList();
    } else {
      return [];
    }
  }
}
