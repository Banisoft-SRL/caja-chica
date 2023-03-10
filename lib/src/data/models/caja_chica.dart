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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['CompaniaCodigo'] = companiaCodigo;
    data['SucursalCodigo'] = sucursalCodigo;
    data['Fecha'] = fecha;
    data['FechaDocumento'] = fechaDocumento;
    data['NumeroDocumento'] = numeroDocumento;
    data['CuentaBancaria'] = cuentaBancaria;
    data['FormaPagoCodigo'] = formaPagoCodigo;
    data['TipoTransaccionCodigo'] = tipoTransaccionCodigo;
    data['MonedaCodigo'] = monedaCodigo;
    data['Origen'] = origen;
    data['Modulo'] = modulo;
    data['RncSuplidor'] = rncSuplidor;
    data['NombreSuplidor'] = nombreSuplidor;
    data['NcfNumero'] = ncfNumero;
    data['BeneficiarioId'] = beneficiarioId;
    data['NombreBeneficiario'] = nombreBeneficiario;
    data['Referencia'] = referencia;
    data['Descripcion'] = descripcion;
    data['Moneda'] = moneda;
    data['Tasa'] = tasa;
    data['ValorDesembolso'] = valorDesembolso;
    data['TotalImp'] = totalImp;
    data['Master'] = master;
    data['EntradaDiario'] = entradaDiario;
    data['Estado'] = estado;
    data['ConceptoGasto'] = conceptoGasto;
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
