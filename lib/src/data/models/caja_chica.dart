import 'package:caja_chica/src/core/interfaces/imodel_factory.dart';

class CajaChica extends IModelFactory<CajaChica> {
  int? id;
  int? companiaCodigo;
  int? sucursalCodigo;
  String? fecha;
  String? fechaDocumento;
  int? numeroDocumento;
  String? cuentaBancaria;
  String? formaPagoCodigo;
  String? tipoTransaccionCodigo;
  String? monedaCodigo;
  int? origen;
  String? modulo;
  String? rncSuplidor;
  String? nombreSuplidor;
  String? ncfNumero;
  String? beneficiarioId;
  String? nombreBeneficiario;
  String? referencia;
  String? descripcion;
  String? moneda;
  int? tasa;
  double? valorDesembolso;
  double? totalImp;
  int? master;
  int? entradaDiario;
  int? estado;
  int? conceptoGasto;

  CajaChica(
      {this.id,
      this.companiaCodigo,
      this.sucursalCodigo,
      this.fecha,
      this.fechaDocumento,
      this.numeroDocumento,
      this.cuentaBancaria,
      this.formaPagoCodigo,
      this.tipoTransaccionCodigo,
      this.monedaCodigo,
      this.origen,
      this.modulo,
      this.rncSuplidor,
      this.nombreSuplidor,
      this.ncfNumero,
      this.beneficiarioId,
      this.nombreBeneficiario,
      this.referencia,
      this.descripcion,
      this.moneda,
      this.tasa,
      this.valorDesembolso,
      this.totalImp,
      this.master,
      this.entradaDiario,
      this.estado,
      this.conceptoGasto});

  CajaChica.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    companiaCodigo = json['CompaniaCodigo'];
    sucursalCodigo = json['SucursalCodigo'];
    fecha = json['Fecha'];
    fechaDocumento = json['FechaDocumento'];
    numeroDocumento = json['NumeroDocumento'];
    cuentaBancaria = json['CuentaBancaria'];
    formaPagoCodigo = json['FormaPagoCodigo'];
    tipoTransaccionCodigo = json['TipoTransaccionCodigo'];
    monedaCodigo = json['MonedaCodigo'];
    origen = json['Origen'];
    modulo = json['Modulo'];
    rncSuplidor = json['RncSuplidor'];
    nombreSuplidor = json['NombreSuplidor'];
    ncfNumero = json['NcfNumero'];
    beneficiarioId = json['BeneficiarioId'];
    nombreBeneficiario = json['NombreBeneficiario'];
    referencia = json['Referencia'];
    descripcion = json['Descripcion'];
    moneda = json['Moneda'];
    tasa = json['Tasa'];
    valorDesembolso = json['ValorDesembolso'];
    totalImp = json['TotalImp'];
    master = json['Master'];
    entradaDiario = json['EntradaDiario'];
    estado = json['Estado'];
    conceptoGasto = json['ConceptoGasto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['CompaniaCodigo'] = this.companiaCodigo;
    data['SucursalCodigo'] = this.sucursalCodigo;
    data['Fecha'] = this.fecha;
    data['FechaDocumento'] = this.fechaDocumento;
    data['NumeroDocumento'] = this.numeroDocumento;
    data['CuentaBancaria'] = this.cuentaBancaria;
    data['FormaPagoCodigo'] = this.formaPagoCodigo;
    data['TipoTransaccionCodigo'] = this.tipoTransaccionCodigo;
    data['MonedaCodigo'] = this.monedaCodigo;
    data['Origen'] = this.origen;
    data['Modulo'] = this.modulo;
    data['RncSuplidor'] = this.rncSuplidor;
    data['NombreSuplidor'] = this.nombreSuplidor;
    data['NcfNumero'] = this.ncfNumero;
    data['BeneficiarioId'] = this.beneficiarioId;
    data['NombreBeneficiario'] = this.nombreBeneficiario;
    data['Referencia'] = this.referencia;
    data['Descripcion'] = this.descripcion;
    data['Moneda'] = this.moneda;
    data['Tasa'] = this.tasa;
    data['ValorDesembolso'] = this.valorDesembolso;
    data['TotalImp'] = this.totalImp;
    data['Master'] = this.master;
    data['EntradaDiario'] = this.entradaDiario;
    data['Estado'] = this.estado;
    data['ConceptoGasto'] = this.conceptoGasto;
    return data;
  }

  @override
  CajaChica fromJsonModel(Map<String, dynamic> json) =>
      CajaChica.fromJson(json);

  @override
  List<CajaChica> fromJsonModelList(Object? json) {
    if (json == null) return [];
    if (json is List) {
      return json.map((e) => CajaChica.fromJson(e)).toList();
    } else {
      return [];
    }
  }
}
