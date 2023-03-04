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
    data['codigo'] = this.codigo;
    data['nombre'] = this.nombre;
    data['password'] = this.password;
    data['codigoCompania'] = this.codigoCompania;
    data['codigoSucursal'] = this.codigoSucursal;
    data['codigoEstado'] = this.codigoEstado;
    data['comision'] = this.comision;
    data['porcentajeModificacionMinimo'] = this.porcentajeModificacionMinimo;
    data['porcentajeDescuento'] = this.porcentajeDescuento;
    data['porcentajeDescuentoTotal'] = this.porcentajeDescuentoTotal;
    data['codigoFacturacion'] = this.codigoFacturacion;
    data['esCajero'] = this.esCajero;
    data['idCajero'] = this.idCajero;
    data['porcentajeDescuentoRecargo'] = this.porcentajeDescuentoRecargo;
    data['porcentajeDescuentoRecargoTotal'] =
        this.porcentajeDescuentoRecargoTotal;
    data['permitirSalidaInventario'] = this.permitirSalidaInventario;
    data['montoDescuento'] = this.montoDescuento;
    data['codigoSeguridad'] = this.codigoSeguridad;
    data['codigoProveedor'] = this.codigoProveedor;
    data['esAdmin'] = this.esAdmin;
    data['codigoTurnoCaja'] = this.codigoTurnoCaja;
    data['foto'] = this.foto;
    data['manejaInformacionVentas'] = this.manejaInformacionVentas;
    data['generaBackup'] = this.generaBackup;
    data['generaNotas'] = this.generaNotas;
    data['esAdmin2'] = this.esAdmin2;
    data['limiteCredito'] = this.limiteCredito;
    data['documentosVencidos'] = this.documentosVencidos;
    data['condicionPago'] = this.condicionPago;
    data['noVisualizaFactura'] = this.noVisualizaFactura;
    data['nombrePrograma'] = this.nombrePrograma;
    data['facturaCosto'] = this.facturaCosto;
    data['manejaAlertasCXC'] = this.manejaAlertasCXC;
    data['codigoCuentaBancaria'] = this.codigoCuentaBancaria;
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
    data['admusr_codigo'] = this.codigo;
    data['admusr_nombre'] = this.nombre;
    data['admusr_password'] = this.password;
    data['admcia_codigo'] = this.codigoCompania;
    data['admsuc_codigo'] = this.codigoSucursal;
    data['admsts_codigo'] = this.codigoEstado;
    data['admusr_comision'] = this.comision;
    data['admusr_permodmin'] = this.porcentajeModificacionMinimo;
    data['admusr_perdesc'] = this.porcentajeDescuento;
    data['admusr_pordesc'] = this.porcentajeDescuentoTotal;
    data['admusr_codfac'] = this.codigoFacturacion;
    data['admusr_cajero'] = this.esCajero;
    data['admusr_idcajero'] = this.idCajero;
    data['admusr_perDescRec'] = this.porcentajeDescuentoRecargo;
    data['admusr_permitirsalidainv'] = this.permitirSalidaInventario;
    data['admusr_montodesc'] = this.montoDescuento;
    data['admusr_codseg'] = this.codigoSeguridad;
    data['facvdr_codigo'] = this.codigoProveedor;
    data['admusr_admin'] = this.esAdmin;
    data['cajtur_codigo'] = this.codigoTurnoCaja;
    data['admusr_foto'] = this.foto;
    data['admusr_manejaInfoVentas'] = this.manejaInformacionVentas;
    data['admusr_generabk'] = this.generaBackup;
    data['admusr_generanotas'] = this.generaNotas;
    data['admusr_admin2'] = this.esAdmin2;
    data['admusr_limitecredito'] = this.limiteCredito;
    data['admusr_documentosvencidos'] = this.documentosVencidos;
    data['admusr_condicionpago'] = this.condicionPago;
    data['admusr_noVisualizaFactura'] = this.noVisualizaFactura;
    data['prgprg_nombre'] = this.nombrePrograma;
    data['admusr_facturacosto'] = this.facturaCosto;
    data['admusr_manejaAlertasCXC'] = this.manejaAlertasCXC;
    data['eftctb_codigo'] = this.codigoCuentaBancaria;

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
