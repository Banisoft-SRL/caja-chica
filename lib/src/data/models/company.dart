import 'package:caja_chica/src/core/interfaces/imodel_factory.dart';

class Company implements IModelFactory<Company> {
  int? companyId;
  String? nombre;
  String? siglas;
  String? rnc;
  String? moneda;
  String? slogan;
  String? imagen;
  String? nombreRepresentante;
  String? representanteId;
  String? razonSocial;
  String? selloOficial;
  String? admciaDespachaco;
  String? admciaRpe;
  String? sello1;
  String? sello2;
  String? sello3;
  String? nombreCodigoBarra;
  String? titulo1;
  String? titulo2;
  String? titulo3;
  String? titulo4;

  Company(
      {this.companyId,
      this.nombre,
      this.siglas,
      this.rnc,
      this.moneda,
      this.slogan,
      this.imagen,
      this.nombreRepresentante,
      this.representanteId,
      this.razonSocial,
      this.selloOficial,
      this.admciaDespachaco,
      this.admciaRpe,
      this.sello1,
      this.sello2,
      this.sello3,
      this.nombreCodigoBarra,
      this.titulo1,
      this.titulo2,
      this.titulo3,
      this.titulo4});

  Company.fromJson(Map<String, dynamic> json) {
    companyId = json['companyId'];
    nombre = json['nombre'];
    siglas = json['siglas'];
    rnc = json['rnc'];
    moneda = json['moneda'];
    slogan = json['slogan'];
    imagen = json['imagen'];
    nombreRepresentante = json['nombreRepresentante'];
    representanteId = json['representanteId'];
    razonSocial = json['razonSocial'];
    selloOficial = json['selloOficial'];
    admciaDespachaco = json['admcia_despachaco'];
    admciaRpe = json['admcia_rpe'];
    sello1 = json['sello1'];
    sello2 = json['sello2'];
    sello3 = json['sello3'];
    nombreCodigoBarra = json['nombreCodigoBarra'];
    titulo1 = json['titulo1'];
    titulo2 = json['titulo2'];
    titulo3 = json['titulo3'];
    titulo4 = json['titulo4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['companyId'] = companyId;
    data['nombre'] = nombre;
    data['siglas'] = siglas;
    data['rnc'] = rnc;
    data['moneda'] = moneda;
    data['slogan'] = slogan;
    data['imagen'] = imagen;
    data['nombreRepresentante'] = nombreRepresentante;
    data['representanteId'] = representanteId;
    data['razonSocial'] = razonSocial;
    data['selloOficial'] = selloOficial;
    data['admcia_despachaco'] = admciaDespachaco;
    data['admcia_rpe'] = admciaRpe;
    data['sello1'] = sello1;
    data['sello2'] = sello2;
    data['sello3'] = sello3;
    data['nombreCodigoBarra'] = nombreCodigoBarra;
    data['titulo1'] = titulo1;
    data['titulo2'] = titulo2;
    data['titulo3'] = titulo3;
    data['titulo4'] = titulo4;
    return data;
  }

  Company.fromDatabase(Map<String, dynamic> json) {
    companyId = json['admcia_codigo'];
    nombre = json['admcia_nombre'];
    siglas = json['admcia_siglas'];
    rnc = json['admcia_rnc'];
    moneda = json['admmon_codigo'];
  }

  Map<String, dynamic> toDatabase() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['admcia_codigo'] = companyId;
    data['admcia_nombre'] = nombre;
    data['admcia_siglas'] = siglas;
    data['admcia_rnc'] = rnc;
    data['admmon_codigo'] = moneda;
    return data;
  }

  @override
  Company fromJsonModel(Map<String, dynamic> json) => Company.fromJson(json);

  @override
  List<Company> fromJsonModelList(Object? json) {
    if (json == null) return [];
    if (json is List) {
      return json.map((e) => Company.fromJson(e)).toList();
    } else {
      return [];
    }
  }
}
