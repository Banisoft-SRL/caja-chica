import '../../core/interfaces/imodel_factory.dart';

class User implements IModelFactory<User> {
  String? codigo;
  String? nombre;
  String? password;
  int? codigoCompania;
  int? codigoSucursal;
  int? codigoEstado;
  int? comision;
  int? porcentajeModificacionMinimo;
  int? porcentajeDescuento;
  int? porcentajeDescuentoTotal;
  int? codigoFacturacion;
  String? esCajero;
  int? idCajero;
  int? porcentajeDescuentoRecargo;
  int? porcentajeDescuentoRecargoTotal;
  int? permitirSalidaInventario;
  int? montoDescuento;
  String? codigoSeguridad;
  int? codigoProveedor;
  int? esAdmin;
  String? codigoTurnoCaja;
  String? foto;
  int? manejaInformacionVentas;
  int? generaBackup;
  int? generaNotas;
  Null? esAdmin2;
  int? limiteCredito;
  int? documentosVencidos;
  int? condicionPago;
  int? noVisualizaFactura;
  Null? nombrePrograma;
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
    porcentajeDescuentoTotal = json['porcentajeDescuentoTotal'];
    codigoFacturacion = json['codigoFacturacion'];
    esCajero = json['esCajero'];
    idCajero = json['idCajero'];
    porcentajeDescuentoRecargo = json['porcentajeDescuentoRecargo'];
    porcentajeDescuentoRecargoTotal = json['porcentajeDescuentoRecargoTotal'];
    permitirSalidaInventario = json['permitirSalidaInventario'];
    montoDescuento = json['montoDescuento'];
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
