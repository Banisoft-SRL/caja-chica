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
  int? admciaDespachaco;
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
    companyId = json['CompanyId '];
    nombre = json['Nombre '];
    siglas = json['Siglas '];
    rnc = json['Rnc '];
    moneda = json['Moneda '];
    slogan = json['Slogan '];
    imagen = json['Imagen '];
    nombreRepresentante = json['NombreRepresentante '];
    representanteId = json['RepresentanteId '];
    razonSocial = json['RazonSocial '];
    selloOficial = json['SelloOficial '];
    admciaDespachaco = json['admcia_despachaco '];
    admciaRpe = json['admcia_rpe '];
    sello1 = json['Sello1 '];
    sello2 = json['Sello2 '];
    sello3 = json['Sello3 '];
    nombreCodigoBarra = json['NombreCodigoBarra '];
    titulo1 = json['Titulo1 '];
    titulo2 = json['Titulo2 '];
    titulo3 = json['Titulo3 '];
    titulo4 = json['Titulo4 '];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CompanyId '] = this.companyId;
    data['Nombre '] = this.nombre;
    data['Siglas '] = this.siglas;
    data['Rnc '] = this.rnc;
    data['Moneda '] = this.moneda;
    data['Slogan '] = this.slogan;
    data['Imagen '] = this.imagen;
    data['NombreRepresentante '] = this.nombreRepresentante;
    data['RepresentanteId '] = this.representanteId;
    data['RazonSocial '] = this.razonSocial;
    data['SelloOficial '] = this.selloOficial;
    data['admcia_despachaco '] = this.admciaDespachaco;
    data['admcia_rpe '] = this.admciaRpe;
    data['Sello1 '] = this.sello1;
    data['Sello2 '] = this.sello2;
    data['Sello3 '] = this.sello3;
    data['NombreCodigoBarra '] = this.nombreCodigoBarra;
    data['Titulo1 '] = this.titulo1;
    data['Titulo2 '] = this.titulo2;
    data['Titulo3 '] = this.titulo3;
    data['Titulo4 '] = this.titulo4;
    return data;
  }


  Company.fromDatabase(Map<String, dynamic> json) {
    companyId = json['CompanyId '];
    nombre = json['Nombre '];
    siglas = json['Siglas '];
    rnc = json['Rnc '];
    moneda = json['Moneda '];
    slogan = json['Slogan '];
    imagen = json['Imagen '];
    nombreRepresentante = json['NombreRepresentante '];
    representanteId = json['RepresentanteId '];
    razonSocial = json['RazonSocial '];
    selloOficial = json['SelloOficial '];
    admciaDespachaco = json['admcia_despachaco '];
    admciaRpe = json['admcia_rpe '];
    sello1 = json['Sello1 '];
    sello2 = json['Sello2 '];
    sello3 = json['Sello3 '];
    nombreCodigoBarra = json['NombreCodigoBarra '];
    titulo1 = json['Titulo1 '];
    titulo2 = json['Titulo2 '];
    titulo3 = json['Titulo3 '];
    titulo4 = json['Titulo4 '];
  }

  Map<String, dynamic> toDatabase() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CompanyId '] = this.companyId;
    data['Nombre '] = this.nombre;
    data['Siglas '] = this.siglas;
    data['Rnc '] = this.rnc;
    data['Moneda '] = this.moneda;
    data['Slogan '] = this.slogan;
    data['Imagen '] = this.imagen;
    data['NombreRepresentante '] = this.nombreRepresentante;
    data['RepresentanteId '] = this.representanteId;
    data['RazonSocial '] = this.razonSocial;
    data['SelloOficial '] = this.selloOficial;
    data['admcia_despachaco '] = this.admciaDespachaco;
    data['admcia_rpe '] = this.admciaRpe;
    data['Sello1 '] = this.sello1;
    data['Sello2 '] = this.sello2;
    data['Sello3 '] = this.sello3;
    data['NombreCodigoBarra '] = this.nombreCodigoBarra;
    data['Titulo1 '] = this.titulo1;
    data['Titulo2 '] = this.titulo2;
    data['Titulo3 '] = this.titulo3;
    data['Titulo4 '] = this.titulo4;
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
