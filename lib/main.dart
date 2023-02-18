import 'package:caja_chica/src/UI/blocs/login/login_cubit.dart';
import 'package:caja_chica/src/UI/pages/Login.dart';
import 'package:caja_chica/src/core/interfaces/icache_service.dart';
import 'package:caja_chica/src/di_container.dart';
import 'package:caja_chica/src/services/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  await serviceLocator.get<ICacheService>().init();

  runApp( BlocProvider(
    create: (context) => serviceLocator.get<LoginCubit>(),
    child: const CajaChicaApp(),
  ));
}

class CajaChicaApp extends StatelessWidget {
  const CajaChicaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Caja Chica',
        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}
