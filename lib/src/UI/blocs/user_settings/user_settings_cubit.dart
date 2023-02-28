import 'package:bloc/bloc.dart';
import 'package:caja_chica/src/core/interfaces/iapi_client.dart';
import 'package:caja_chica/src/core/utils/endpoints.dart';
import 'package:caja_chica/src/core/utils/utils.dart';
import 'package:caja_chica/src/data/models/company.dart';
import 'package:caja_chica/src/data/models/sucursal.dart';
import 'package:equatable/equatable.dart';
import 'package:database_helper/src/sqlite_database.dart';
part 'user_settings_state.dart';

class UserSettingsCubit extends Cubit<UserSettingsState> {
  UserSettingsCubit(
      {required IAPiClient apiClient, required SqliteDatabaseImp db})
      : _apiClient = apiClient,
        _db = db,
        super(const UserSettingsState());

  final IAPiClient _apiClient;
  final SqliteDatabaseImp _db;

  Future<void> syncData(String? srvAddress, String? srvPort) async {
    emit(state.copyWith(status: UserSettingStatus.loading));
    late final List<Sucursal> sucursales;
    late final List<Company> companies;

    try {
      if (!await Utils.defineAndTestServiceDefinition(srvAddress, srvPort)) {
        throw Exception(
            "No se pudo establecer la conexión con el servidor. Verifique la dirección y el puerto.");
      }

      companies = await _getCompanies();

      if (companies.isEmpty) throw Exception("No se encontraron compañías.");

      sucursales = await _getSucursales();
    } catch (e) {
      emit(state.copyWith(
          status: UserSettingStatus.error, message: e.toString()));
      return;
    }

    emit(state.copyWith(
        status: UserSettingStatus.success,
        sucursales: sucursales,
        companies: companies));

    state.toString();
  }

  Future<List<Sucursal>> _getSucursales() async {
    try {
      final sucursales = await _apiClient
          .getRequest<List<Sucursal>>(Endpoints.getAllSucursales);
      if (!sucursales.isSuccess! && sucursales.statusCode != 200) return [];

      //save to db
      sucursales.data?.forEach((element) async {
        await _db.insert(table: "madmsuc", data: element.toDatabase());
      });

      return sucursales.data ?? [];
    } catch (_) {
      return [];
    }
  }

  Future<List<Company>> _getCompanies() async {
    try {
      final companies =
          await _apiClient.getRequest<List<Company>>(Endpoints.getAllCompanies);
      if (!companies.isSuccess! && companies.statusCode != 200) return [];

      //save to db
      companies.data?.forEach((element) async {
        await _db.insert(table: "madmcia", data: element.toDatabase());
      });

      return companies.data ?? [];
    } catch (_) {
      return [];
    }
  }
}
