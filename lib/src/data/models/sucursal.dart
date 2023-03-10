import 'package:caja_chica/src/core/interfaces/imodel_factory.dart';

class Sucursal implements IModelFactory<Sucursal> {
  int? companyId;
  int? id;
  String? nombre;
  String? direccion;
  String? telefono;

  int? codigoAlmacen;

  Sucursal({
    this.companyId,
    this.id,
    this.nombre,
    this.direccion,
    this.telefono,
    this.codigoAlmacen,
  });

  Sucursal.fromJson(Map<String, dynamic> json) {
    companyId = json['companyId'];
    id = json['id'];
    nombre = json['nombre'];
    direccion = json['direccion'];
    telefono = json['telefono'];
    codigoAlmacen = json['codigoAlmacen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['companyId'] = companyId;
    data['id'] = id;
    data['nombre'] = nombre;
    data['direccion'] = direccion;
    data['telefono'] = telefono;
    data['codigoAlmacen'] = codigoAlmacen;
    return data;
  }

  Sucursal.fromDatabase(Map<String, dynamic> json) {
    companyId = json['admcia_codigo'];
    id = json['admsuc_codigo'];
    nombre = json['admsuc_nombre'];
    direccion = json['admsuc_direccion'];
    telefono = json['admsuc_telefono'];
    codigoAlmacen = json['invalm_codigo'];
  }

  Map<String, dynamic> toDatabase() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['admcia_codigo'] = companyId;
    data['admsuc_codigo'] = id;
    data['admsuc_nombre'] = nombre;
    data['admsuc_direccion'] = direccion;
    data['admsuc_telefono'] = telefono;
    data['invalm_codigo'] = codigoAlmacen;

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
