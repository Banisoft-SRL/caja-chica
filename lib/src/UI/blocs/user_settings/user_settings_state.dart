part of 'user_settings_cubit.dart';

enum UserSettingStatus { initial, loading, success, error, loaded }

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
    T Function()? initial,
    T Function()? loading,
    T Function()? loaded,
    T Function(
      List<Sucursal> sucursales,
      List<Company> companies,
      List<User> users,
      List<CuentaBanco> cuentaBanco,
    )?
        success,
    required T Function(String? message)? error,
  }) {
    Map<UserSettingStatus, T Function()?> states = {
      UserSettingStatus.initial: initial,
      UserSettingStatus.loading: loading,
      UserSettingStatus.success: () =>
          success!(sucursales, companies, users, cuentaBanco),
      UserSettingStatus.error: () => error!(message),
      UserSettingStatus.loaded: loaded,
    };
    return states[status]!() ?? initial!();
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

  // add serilizations methods

  Map<String, dynamic> toJson() {
    return {
      'status': status.toString(),
      'message': message,
      'sucursales': sucursales.map((sucursal) => sucursal.toJson()).toList(),
      'companies': companies.map((company) => company.toJson()).toList(),
      'users': users.map((user) => user.toJson()).toList(),
      'cuentaBanco':
          cuentaBanco.map((cuentaBanco) => cuentaBanco.toJson()).toList(),
    };
  }

  factory UserSettingsState.fromJson(Map<String, dynamic> json) {
    return UserSettingsState(
      status: UserSettingStatus.values
          .firstWhere((e) => e.toString() == json['status']),
      message: json['message'],
      sucursales: List<Sucursal>.from(json['sucursales']
          .map((sucursalJson) => Sucursal.fromJson(sucursalJson))),
      companies: List<Company>.from(json['companies']
          .map((companyJson) => Company.fromJson(companyJson))),
      users: List<User>.from(
          json['users'].map((userJson) => User.fromJson(userJson))),
      cuentaBanco: List<CuentaBanco>.from(json['cuentaBanco']
          .map((cuentaBancoJson) => CuentaBanco.fromJson(cuentaBancoJson))),
    );
  }
}
