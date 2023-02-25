import 'package:caja_chica/src/core/interfaces/imodel_factory.dart';

class Sucursal implements IModelFactory<Sucursal> {
  int? companyId;
  int? id;
  String? nombre;
  String? direccion;
  String? telefono;
  String? fax;
  String? codigoAlmacen;
  String? correo;
  String? claveCorreo;

  Sucursal(
      {this.companyId,
      this.id,
      this.nombre,
      this.direccion,
      this.telefono,
      this.fax,
      this.codigoAlmacen,
      this.correo,
      this.claveCorreo});

  Sucursal.fromJson(Map<String, dynamic> json) {
    companyId = json['CompanyId'];
    id = json['Id'];
    nombre = json['Nombre'];
    direccion = json['Direccion '];
    telefono = json['Telefono '];
    fax = json['fax '];
    codigoAlmacen = json['CodigoAlmacen '];
    correo = json['Correo '];
    claveCorreo = json['ClaveCorreo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CompanyId'] = this.companyId;
    data['Id'] = this.id;
    data['Nombre'] = this.nombre;
    data['Direccion '] = this.direccion;
    data['Telefono '] = this.telefono;
    data['fax '] = this.fax;
    data['CodigoAlmacen '] = this.codigoAlmacen;
    data['Correo '] = this.correo;
    data['ClaveCorreo'] = this.claveCorreo;
    return data;
  }

  @override
  Sucursal fromJsonModel(Map<String, dynamic> json) => Sucursal.fromJson(json);

  @override
  List<Sucursal> fromJsonModelList(Object? json) {
    if (json == null) return [];
    if (json is List) {
      return json.map((e) => Sucursal.fromJson(e)).toList();
    } else {
      return [];
    }
  }
}
