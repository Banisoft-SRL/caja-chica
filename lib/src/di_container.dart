import 'package:caja_chica/src/UI/blocs/crear_desembolso/crear_desembolso_bloc.dart';
import 'package:caja_chica/src/UI/blocs/user_settings/user_settings_cubit.dart';
import 'package:caja_chica/src/core/interfaces/iapi_client.dart';
import 'package:caja_chica/src/core/interfaces/icache_service.dart';
import 'package:caja_chica/src/services/api_client.dart';
import 'package:caja_chica/src/services/shared_preferences_service.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:database_helper/src/sqlite_database.dart';
import 'UI/blocs/login/login_cubit.dart';

final serviceLocator = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Services Registration
  serviceLocator
      .registerLazySingleton<ICacheService>(() => SharedPreferenceService());
  serviceLocator.registerLazySingleton<http.Client>(() => http.Client());
  serviceLocator.registerLazySingleton<IAPiClient>(() => ApiClient());
  serviceLocator.registerLazySingleton(() => SqliteDatabaseImp.instance);

  // Blocs/Cubits Registration
  serviceLocator.registerLazySingleton(() => LoginCubit(
      apiClient: serviceLocator(),
      cacheService: serviceLocator(),
      database: serviceLocator()));
  serviceLocator.registerLazySingleton(() => UserSettingsCubit(
      apiClient: serviceLocator(),
      db: serviceLocator(),
      cacheService: serviceLocator()));
  serviceLocator.registerLazySingleton(() => CrearDesembolsoBloc());
}
