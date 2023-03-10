import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/user_settings/user_settings_cubit.dart';

class DropdownCuentaBancaria extends StatelessWidget {
  const DropdownCuentaBancaria({
    super.key,
    required this.state,
  });
  final UserSettingsState state;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: InputDecorator(
        decoration: const InputDecoration(
          filled: true,
          enabled: false,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            isDense: true,
            hint: const Text('Cuenta Bancaria'),
            value: state.cuentaBanco.isNotEmpty
                ? state.cuentaBanco.first.codigo
                : 0,
            items: state.cuentaBanco.map((cuentaBanco) {
              return DropdownMenuItem(
                value: cuentaBanco.codigo,
                child: Text('${cuentaBanco.nombre}'),
              );
            }).toList(),
            onChanged: null,
          ),
        ),
      ),
    );
  }
}

class UsersDropdown extends StatelessWidget {
  const UsersDropdown({
    super.key,
    required this.state,
  });
  final UserSettingsState state;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: InputDecorator(
        decoration: InputDecoration(
          filled: true,
          enabled: state.users.isNotEmpty,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            isDense: true,
            disabledHint: const Text('Seleccione un usuario'),
            value: state.users.isNotEmpty ? state.users.first : null,
            items: state.users.map((user) {
              return DropdownMenuItem(
                value: user,
                child: Text('${user.nombre}'),
              );
            }).toList(),
            onChanged: (user) {
              if (user != null) {
                context.read<UserSettingsCubit>().onUserSelected(
                    user.codigoCompania!, user.codigoCuentaBancaria!);
              }
            },
          ),
        ),
      ),
    );
  }
}

class DropdownSucursales extends StatelessWidget {
  const DropdownSucursales({
    super.key,
    required this.state,
  });
  final UserSettingsState state;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: InputDecorator(
        decoration: InputDecoration(
          filled: true,
          enabled: state.sucursales.isNotEmpty,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            isDense: true,
            disabledHint: const Text("Seleccione una sucursal"),
            value: state.sucursales.isNotEmpty
                ? state.sucursales.first.companyId
                : 0,
            items: state.sucursales.map((sucursal) {
              return DropdownMenuItem(
                value: sucursal.id,
                child: Text('${sucursal.nombre}'),
              );
            }).toList(),
            onChanged: (sucursalId) {
              if (sucursalId != null) {
                context
                    .read<UserSettingsCubit>()
                    .onSucursalSelected(sucursalId);
              }
            },
          ),
        ),
      ),
    );
  }
}

class DropdownCompany extends StatelessWidget {
  const DropdownCompany({
    super.key,
    required this.state,
  });
  final UserSettingsState state;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      child: InputDecorator(
        decoration: InputDecoration(
          filled: true,
          enabled: state.companies.isNotEmpty,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            isDense: true,
            disabledHint: const Text("Seleccione una compañia"),
            value: state.companies.isNotEmpty
                ? state.companies.first.companyId
                : 0,
            items: state.companies.map((company) {
              return DropdownMenuItem(
                value: company.companyId,
                child: Text('${company.nombre}'),
              );
            }).toList(),
            onChanged: (value) {
              if (value != null) {
                context.read<UserSettingsCubit>().onCompanySelected(value);
              }
            },
          ),
        ),
      ),
    );
  }
}
