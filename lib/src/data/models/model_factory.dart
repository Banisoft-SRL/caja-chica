import 'package:caja_chica/src/data/models/models.dart';
import '../../core/interfaces/imodel_factory.dart';

class ModelFactory {
  static final Map<String, IModelFactory> _processorMap = {
    "$CajaChica": CajaChica(),
    "List<$CajaChica>": CajaChica(),
    "$Sucursal": Sucursal(),
    "List<$Sucursal>": Sucursal(),
    "$Company": Company(),
    "List<$Company>": Company(),
  };

  static IModelFactory createModel(String type) {
    if (_processorMap[type] == null) {
      throw Exception("ModelFactory: $type is not a valid Model type!");
    }

    return _processorMap[type]!;
  }
}
