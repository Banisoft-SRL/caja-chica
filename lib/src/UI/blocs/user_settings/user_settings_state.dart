part of 'user_settings_cubit.dart';

enum UserSettingStatus { initial, loading, success, error }

class UserSettingsState extends Equatable {
  const UserSettingsState({
    this.status = UserSettingStatus.initial,
    this.message,
    this.sucursales = const [],
    this.companies = const [],
    this.users = const [],
    this.cuentaBanco = const [],
  });

  final UserSettingStatus status;
  final String? message;
  final List<Sucursal> sucursales;
  final List<Company> companies;
  final List<User> users;
  final List<CuentaBanco> cuentaBanco;

  UserSettingsState copyWith({
    UserSettingStatus? status,
    String? message,
    List<Sucursal>? sucursales,
    List<Company>? companies,
    List<User>? users,
    List<CuentaBanco>? cuentaBanco,
  }) {
    return UserSettingsState(
      status: status ?? this.status,
      message: message ?? this.message,
      sucursales: sucursales ?? this.sucursales,
      companies: companies ?? this.companies,
      users: users ?? this.users,
      cuentaBanco: cuentaBanco ?? this.cuentaBanco,
    );
  }

  T when<T>({
    required T Function() initial,
    required T Function() loading,
    required T Function(
      List<Sucursal> sucursales,
      List<Company> companies,
      List<User> users,
      List<CuentaBanco> cuentaBanco,
    )
        success,
    required T Function(String? message) error,
  }) {
    Map<UserSettingStatus, T Function()> states = {
      UserSettingStatus.initial: initial,
      UserSettingStatus.loading: loading,
      UserSettingStatus.success: () =>
          success(sucursales, companies, users, cuentaBanco),
      UserSettingStatus.error: () => error(message),
    };
    return states[status]!() ?? initial();
  }

  @override
  String toString() {
    return '''UserSettingState{status: $status, 
    message: $message, sucursales: $sucursales, companies: $companies}
    users $users cuentaBanco $cuentaBanco}
    ''';
  }

  @override
  List<Object?> get props =>
      [status, message, sucursales, companies, users, cuentaBanco];
}
