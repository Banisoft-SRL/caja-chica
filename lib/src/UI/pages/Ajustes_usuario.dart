import 'package:caja_chica/src/UI/blocs/user_settings/user_settings_cubit.dart';
import 'package:caja_chica/src/UI/pages/Desembolsos.dart';
import 'package:caja_chica/src/UI/widgets/loading_dialog.dart';
import 'package:caja_chica/src/data/models/company.dart';
import 'package:caja_chica/src/di_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../widgets/widgets.dart';

class AjusteUsuario extends StatefulWidget {
  const AjusteUsuario({Key? key}) : super(key: key);

  @override
  State<AjusteUsuario> createState() => _AjusteUsuarioState();
}

class _AjusteUsuarioState extends State<AjusteUsuario> {
  late final TextEditingController hostnameController;
  late final TextEditingController portController;
  late final UserSettingsCubit cubit;
  @override
  void initState() {
    hostnameController = TextEditingController();
    portController = TextEditingController();
    cubit = serviceLocator.get<UserSettingsCubit>();
    cubit.loadStateFromCache();
    super.initState();
  }

  @override
  void dispose() {
    hostnameController.dispose();
    portController.dispose();
    super.dispose();
  }

  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    var maskFormatter =
        MaskTextInputFormatter(mask: '#####', filter: {"#": RegExp(r'[0-9]')});
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(children: const [
          SizedBox(
            width: 50,
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(150, 243, 254, 600),
              radius: 17,
              child: Icon(
                Icons.settings_suggest,
                size: 20,
                color: Color.fromRGBO(100, 100, 99, 600),
              ),
            ),
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            'Ajustes',
            style: TextStyle(color: Colors.black38),
          )
        ]),
        centerTitle: true,
        leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.done,
                size: 36,
                color: Colors.black,
              ),
              onPressed: () async {
                cubit.saveStateToCache();
              }),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'DATOS DE CONEXION REQUERIDOS',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      Row(
                        children: const [
                          Text("Hostname"),
                          Text(
                            ' (Requerido*)',
                            style: TextStyle(
                                color: Color.fromRGBO(251, 59, 59, 600)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.60,
                        height: 47,
                        child: TextField(
                          controller: hostnameController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('e.j  banisoft.dyndns.org'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Text("Port"),
                          Text(
                            ' (Requerido*)',
                            style: TextStyle(
                                color: Color.fromRGBO(251, 59, 59, 600)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.30,
                        height: 46.9,
                        child: TextField(
                          controller: portController,
                          inputFormatters: [maskFormatter],
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('e.j 8080'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Button de Probar la conexion.

              const SizedBox(
                height: 16,
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () async => cubit.getCompanies(
                    hostnameController.text, portController.text),
                color: Colors.green,
                child: const Text(
                  'Comprobar Conexion',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              // Titulo de Compañía & Usuarios

              const SizedBox(
                height: 30,
              ),
              const Text(
                'Compañía & Usuarios',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),

              // Ajustes de Compañía & Usuarios

              const _SettingsFields(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SettingsFields extends StatelessWidget {
  const _SettingsFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserSettingsCubit, UserSettingsState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          success: (_, __, ___, ____) {},
          loading: () => showDialog(
              context: context,
              builder: (context) => const LoadingDialog(title: "Cargando...")),
          loaded: () => Navigator.pop(context),
          error: (message) {
            if (ModalRoute.of(context)?.isActive ?? false) {
              Navigator.pop(context);
            }
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message!),
                backgroundColor: Colors.red,
              ),
            );
          },
        );
      },
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.corporate_fare),
                  Text(" Compañia"),
                  Text(
                    ' (Requerido*)',
                    style: TextStyle(color: Color.fromRGBO(251, 59, 59, 600)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownCompany(state: state),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.account_tree_outlined),
                  Text("  Sucursal"),
                  Text(
                    ' (Requerido*)',
                    style: TextStyle(color: Color.fromRGBO(251, 59, 59, 600)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownSucursales(state: state),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.supervised_user_circle),
                  Text("  Usuario"),
                  Text(
                    ' (Requerido*)',
                    style: TextStyle(color: Color.fromRGBO(251, 59, 59, 600)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            UsersDropdown(state: state),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.monetization_on_outlined),
                  Text("  Cuenta Bancaria"),
                  Text(
                    ' (Requerido*)',
                    style: TextStyle(color: Color.fromRGBO(251, 59, 59, 600)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            DropdownCuentaBancaria(state: state),
          ],
        );
      },
    );
  }
}
