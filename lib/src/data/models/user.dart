import '../../core/interfaces/imodel_factory.dart';

class User implements IModelFactory<User> {
  String? codigo;
  String? nombre;
  String? password;
  int? codigoCompania;
  int? codigoSucursal;
  int? codigoEstado;
  double? comision;
  int? porcentajeModificacionMinimo;
  int? porcentajeDescuento;
  double? porcentajeDescuentoTotal;
  int? codigoFacturacion;
  String? esCajero;
  int? idCajero;
  int? porcentajeDescuentoRecargo;
  double? porcentajeDescuentoRecargoTotal;
  int? permitirSalidaInventario;
  double? montoDescuento;
  String? codigoSeguridad;
  int? codigoProveedor;
  int? esAdmin;
  String? codigoTurnoCaja;
  String? foto;
  int? manejaInformacionVentas;
  int? generaBackup;
  int? generaNotas;
  bool? esAdmin2;
  int? limiteCredito;
  int? documentosVencidos;
  int? condicionPago;
  int? noVisualizaFactura;
  bool? nombrePrograma;
  int? facturaCosto;
  int? manejaAlertasCXC;
  String? codigoCuentaBancaria;

  User(
      {this.codigo,
      this.nombre,
      this.password,
      this.codigoCompania,
      this.codigoSucursal,
      this.codigoEstado,
      this.comision,
      this.porcentajeModificacionMinimo,
      this.porcentajeDescuento,
      this.porcentajeDescuentoTotal,
      this.codigoFacturacion,
      this.esCajero,
      this.idCajero,
      this.porcentajeDescuentoRecargo,
      this.porcentajeDescuentoRecargoTotal,
      this.permitirSalidaInventario,
      this.montoDescuento,
      this.codigoSeguridad,
      this.codigoProveedor,
      this.esAdmin,
      this.codigoTurnoCaja,
      this.foto,
      this.manejaInformacionVentas,
      this.generaBackup,
      this.generaNotas,
      this.esAdmin2,
      this.limiteCredito,
      this.documentosVencidos,
      this.condicionPago,
      this.noVisualizaFactura,
      this.nombrePrograma,
      this.facturaCosto,
      this.manejaAlertasCXC,
      this.codigoCuentaBancaria});

  User.fromJson(Map<String, dynamic> json) {
    codigo = json['codigo'];
    nombre = json['nombre'];
    password = json['password'];
    codigoCompania = json['codigoCompania'];
    codigoSucursal = json['codigoSucursal'];
    codigoEstado = json['codigoEstado'];
    comision = json['comision'];
    porcentajeModificacionMinimo = json['porcentajeModificacionMinimo'];
    porcentajeDescuento = json['porcentajeDescuento'];
    porcentajeDescuentoTotal =
        double.tryParse(json['porcentajeDescuentoTotal'].toString());
    codigoFacturacion = json['codigoFacturacion'];
    esCajero = json['esCajero'];
    idCajero = json['idCajero'];
    porcentajeDescuentoRecargo = json['porcentajeDescuentoRecargo'];
    porcentajeDescuentoRecargoTotal = json['porcentajeDescuentoRecargoTotal'];
    permitirSalidaInventario = json['permitirSalidaInventario'];
    montoDescuento = double.tryParse(json['montoDescuento'].toString());
    codigoSeguridad = json['codigoSeguridad'];
    codigoProveedor = json['codigoProveedor'];
    esAdmin = json['esAdmin'];
    codigoTurnoCaja = json['codigoTurnoCaja'];
    foto = json['foto'];
    manejaInformacionVentas = json['manejaInformacionVentas'];
    generaBackup = json['generaBackup'];
    generaNotas = json['generaNotas'];
    esAdmin2 = json['esAdmin2'];
    limiteCredito = json['limiteCredito'];
    documentosVencidos = json['documentosVencidos'];
    condicionPago = json['condicionPago'];
    noVisualizaFactura = json['noVisualizaFactura'];
    nombrePrograma = json['nombrePrograma'];
    facturaCosto = json['facturaCosto'];
    manejaAlertasCXC = json['manejaAlertasCXC'];
    codigoCuentaBancaria = json['codigoCuentaBancaria'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['codigo'] = codigo;
    data['nombre'] = nombre;
    data['password'] = password;
    data['codigoCompania'] = codigoCompania;
    data['codigoSucursal'] = codigoSucursal;
    data['codigoEstado'] = codigoEstado;
    data['comision'] = comision;
    data['porcentajeModificacionMinimo'] = porcentajeModificacionMinimo;
    data['porcentajeDescuento'] = porcentajeDescuento;
    data['porcentajeDescuentoTotal'] = porcentajeDescuentoTotal;
    data['codigoFacturacion'] = codigoFacturacion;
    data['esCajero'] = esCajero;
    data['idCajero'] = idCajero;
    data['porcentajeDescuentoRecargo'] = porcentajeDescuentoRecargo;
    data['porcentajeDescuentoRecargoTotal'] = porcentajeDescuentoRecargoTotal;
    data['permitirSalidaInventario'] = permitirSalidaInventario;
    data['montoDescuento'] = montoDescuento;
    data['codigoSeguridad'] = codigoSeguridad;
    data['codigoProveedor'] = codigoProveedor;
    data['esAdmin'] = esAdmin;
    data['codigoTurnoCaja'] = codigoTurnoCaja;
    data['foto'] = foto;
    data['manejaInformacionVentas'] = manejaInformacionVentas;
    data['generaBackup'] = generaBackup;
    data['generaNotas'] = generaNotas;
    data['esAdmin2'] = esAdmin2;
    data['limiteCredito'] = limiteCredito;
    data['documentosVencidos'] = documentosVencidos;
    data['condicionPago'] = condicionPago;
    data['noVisualizaFactura'] = noVisualizaFactura;
    data['nombrePrograma'] = nombrePrograma;
    data['facturaCosto'] = facturaCosto;
    data['manejaAlertasCXC'] = manejaAlertasCXC;
    data['codigoCuentaBancaria'] = codigoCuentaBancaria;
    return data;
  }

  User.fromDatabase(Map<String, dynamic> data) {
    codigo = data['admusr_codigo'];
    nombre = data['admusr_nombre'];
    password = data['admusr_password'];
    codigoCompania =
        data['admcia_codigo'] = codigoSucursal = data['admsuc_codigo'];
    codigoEstado = data['admsts_codigo'];
    comision = data['admusr_comision'];
    porcentajeModificacionMinimo = data['admusr_permodmin'];
    porcentajeDescuento = data['admusr_perdesc'];
    porcentajeDescuentoTotal = data['admusr_pordesc'];
    codigoFacturacion = data['admusr_codfac'];
    esCajero = data['admusr_cajero'];
    idCajero = data['admusr_idcajero'];
    porcentajeDescuentoRecargo = data['admusr_perDescRec'];
    permitirSalidaInventario = data['admusr_permitirsalidainv'];
    montoDescuento = data['admusr_montodesc'];
    codigoSeguridad = data['admusr_codseg'];
    codigoProveedor = data['facvdr_codigo'];
    esAdmin = data['admusr_admin'];
    codigoTurnoCaja = data['cajtur_codigo'];
    foto = data['admusr_foto'];
    manejaInformacionVentas = data['admusr_manejaInfoVentas'];
    generaBackup = data['admusr_generabk'];
    generaNotas = data['admusr_generanotas'];
    esAdmin2 = data['admusr_admin2'];
    limiteCredito = data['admusr_limitecredito'];
    documentosVencidos = data['admusr_documentosvencidos'];
    condicionPago = data['admusr_condicionpago'];
    noVisualizaFactura = data['admusr_noVisualizaFactura'];
    nombrePrograma = data['prgprg_nombre'];
    facturaCosto = data['admusr_facturacosto'];
    manejaAlertasCXC = data['admusr_manejaAlertasCXC'];
    codigoCuentaBancaria = data['eftctb_codigo'];
  }

  Map<String, dynamic> toDatabase() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['admusr_codigo'] = codigo;
    data['admusr_nombre'] = nombre;
    data['admusr_password'] = password;
    data['admcia_codigo'] = codigoCompania;
    data['admsuc_codigo'] = codigoSucursal;
    data['admsts_codigo'] = codigoEstado;
    data['admusr_comision'] = comision;
    data['admusr_permodmin'] = porcentajeModificacionMinimo;
    data['admusr_perdesc'] = porcentajeDescuento;
    data['admusr_pordesc'] = porcentajeDescuentoTotal;
    data['admusr_codfac'] = codigoFacturacion;
    data['admusr_cajero'] = esCajero;
    data['admusr_idcajero'] = idCajero;
    data['admusr_perDescRec'] = porcentajeDescuentoRecargo;
    data['admusr_permitirsalidainv'] = permitirSalidaInventario;
    data['admusr_montodesc'] = montoDescuento;
    data['admusr_codseg'] = codigoSeguridad;
    data['facvdr_codigo'] = codigoProveedor;
    data['admusr_admin'] = esAdmin;
    data['cajtur_codigo'] = codigoTurnoCaja;
    data['admusr_foto'] = foto;
    data['admusr_manejaInfoVentas'] = manejaInformacionVentas;
    data['admusr_generabk'] = generaBackup;
    data['admusr_generanotas'] = generaNotas;
    data['admusr_admin2'] = esAdmin2;
    data['admusr_limitecredito'] = limiteCredito;
    data['admusr_documentosvencidos'] = documentosVencidos;
    data['admusr_condicionpago'] = condicionPago;
    data['admusr_noVisualizaFactura'] = noVisualizaFactura;
    data['prgprg_nombre'] = nombrePrograma;
    data['admusr_facturacosto'] = facturaCosto;
    data['admusr_manejaAlertasCXC'] = manejaAlertasCXC;
    data['eftctb_codigo'] = codigoCuentaBancaria;

    return data;
  }

  @override
  User fromJsonModel(Map<String, dynamic> json) => User.fromJson(json);

  @override
  List<User> fromJsonModelList(Object? json) {
    if (json == null) return [];
    if (json is List) {
      return json.map((e) => User.fromJson(e)).toList();
    } else {
      return [];
    }
  }
}
