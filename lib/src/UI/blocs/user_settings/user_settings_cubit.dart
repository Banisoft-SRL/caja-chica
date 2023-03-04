import 'package:bloc/bloc.dart';
import 'package:caja_chica/src/core/interfaces/iapi_client.dart';
import 'package:caja_chica/src/core/interfaces/icache_service.dart';
import 'package:caja_chica/src/core/utils/constants.dart';
import 'package:caja_chica/src/core/utils/endpoints.dart';
import 'package:caja_chica/src/core/utils/utils.dart';
import 'package:caja_chica/src/data/models/company.dart';
import 'package:caja_chica/src/data/models/cuenta_banco.dart';
import 'package:caja_chica/src/data/models/models.dart';
import 'package:caja_chica/src/data/models/sucursal.dart';
import 'package:equatable/equatable.dart';
import 'package:database_helper/src/sqlite_database.dart';
part 'user_settings_state.dart';

class UserSettingsCubit extends Cubit<UserSettingsState> {
  UserSettingsCubit(
      {required IAPiClient apiClient,
      required SqliteDatabaseImp db,
      required ICacheService cacheService})
      : _apiClient = apiClient,
        _db = db,
        _cacheService = cacheService,
        super(const UserSettingsState());

  final IAPiClient _apiClient;
  final SqliteDatabaseImp _db;
  final ICacheService _cacheService;
  Future<void> getCompanies(String? srvAddress, String? srvPort) async {
    emit(state.copyWith(status: UserSettingStatus.loading));
    late final List<Company> companies;

    try {
      if (!await Utils.defineAndTestServiceDefinition(srvAddress, srvPort)) {
        throw Exception(
            "No se pudo establecer la conexión con el servidor. Verifique la dirección y el puerto.");
      }

      companies = await _getCompanies();

      if (companies.isEmpty) throw Exception("No se encontraron compañías.");
    } catch (e) {
      emit(state.copyWith(
          status: UserSettingStatus.error, message: e.toString()));
      return;
    }

    emit(state.copyWith(
        status: UserSettingStatus.success, companies: companies));

    state.toString();
  }

  Future<void> onCompanySelected(int companyId) async {
    try {
      final sucursales = await _apiClient
          .getRequest<List<Sucursal>>(Endpoints.getAllSucursales);

      if (!sucursales.isSuccess! && sucursales.statusCode != 200) {
        emit(state.copyWith(
            status: UserSettingStatus.error,
            message: sucursales.message.toString()));
        return;
      }

      //save to db
      sucursales.data?.forEach((element) async {
        await _db.insert(
            table: "madmsuc",
            data: element.toDatabase(),
            deleteTableBeforeInsert: true);
      });

      emit(
        state.copyWith(
            status: UserSettingStatus.success,
            sucursales: sucursales.data!
                .where((element) => element.companyId == companyId)
                .toList()),
      );
    } catch (ex) {
      emit(state.copyWith(
          status: UserSettingStatus.error, message: ex.toString()));
    }
  }

  Future<void> onSucursalSelected(int companyId) async {
    try {
      final myUsers = await _apiClient.getRequest<List<User>>(
          '${Endpoints.getAllUsersWithBankAccountAsync}/$companyId');

      if (!myUsers.isSuccess! && myUsers.statusCode != 200) {
        emit(state.copyWith(
            status: UserSettingStatus.error,
            message: myUsers.message.toString()));
        return;
      }

      //save to db
      myUsers.data?.forEach((element) async {
        await _db.insert(
            table: "madmusr",
            data: element.toDatabase(),
            deleteTableBeforeInsert: true);
      });

      emit(
        state.copyWith(status: UserSettingStatus.success, users: myUsers.data),
      );
    } catch (ex) {
      emit(state.copyWith(
          status: UserSettingStatus.error, message: ex.toString()));
    }
  }

  Future<void> onUserSelected(int companyId, String idCajaChica) async {
    try {
      final cajaChica = await _apiClient.getRequest<CuentaBanco>(
          Endpoints.getCajaChicaById,
          queryParameters: {
            "companyId": "$companyId",
            "idCajaChica": idCajaChica
          });

      if (!cajaChica.isSuccess! && cajaChica.statusCode != 200) {
        emit(state.copyWith(status: UserSettingStatus.error, message: ""));
        return;
      }

      //save to cache
      await _cacheService.put(currentCajaChicaId, idCajaChica);
      emit(state.copyWith(
          status: UserSettingStatus.success, cuentaBanco: [cajaChica.data!]));
    } catch (ex) {
      emit(state.copyWith(
          status: UserSettingStatus.error, message: ex.toString()));
    }
  }

  Future<List<Company>> _getCompanies() async {
    try {
      final companies =
          await _apiClient.getRequest<List<Company>>(Endpoints.getAllCompanies);
      if (!companies.isSuccess! && companies.statusCode != 200) return [];

      //save to db
      companies.data?.forEach((element) async {
        await _db.insert(
            table: "madmcia",
            data: element.toDatabase(),
            deleteTableBeforeInsert: true);
      });

      return companies.data ?? [];
    } catch (_) {
      return [];
    }
  }

  Future<List<User>> _getUsers(int companyId) async {
    try {
      final users = await _apiClient.getRequest<List<User>>(
          '${Endpoints.getAllUsersWithBankAccountAsync}/$companyId');
      if (!users.isSuccess! && users.statusCode != 200) return [];

      //save to db
      users.data?.forEach((element) async {
        await _db.insert(
            table: "madmusr",
            data: element.toDatabase(),
            deleteTableBeforeInsert: true);
      });

      return users.data ?? [];
    } catch (_) {
      return [];
    }
  }
}
