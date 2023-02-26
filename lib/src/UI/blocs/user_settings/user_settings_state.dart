part of 'user_settings_cubit.dart';

enum UserSettingStatus { initial, loading, success, error }

class UserSettingsState extends Equatable {
  const UserSettingsState({
    this.status = UserSettingStatus.initial,
    this.message,
    this.sucursales = const [],
    this.companies = const [],
  });

  final UserSettingStatus status;
  final String? message;
  final List<Sucursal> sucursales;
  final List<Company> companies;

  UserSettingsState copyWith({
    UserSettingStatus? status,
    String? message,
    List<Sucursal>? sucursales,
    List<Company>? companies,
  }) {
    return UserSettingsState(
      status: status ?? this.status,
      message: message ?? this.message,
      sucursales: sucursales ?? this.sucursales,
      companies: companies ?? this.companies,
    );
  }

  T when<T>({
    required T Function() initial,
    required T Function() loading,
    required T Function(
      List<Sucursal> sucursales,
      List<Company> companies,
    )
        success,
    required T Function(String? message) error,
  }) {
    Map<UserSettingStatus, T Function()> states = {
      UserSettingStatus.initial: initial,
      UserSettingStatus.loading: loading,
      UserSettingStatus.success: () => success(sucursales, companies),
      UserSettingStatus.error: () => error(message),
    };
    return states[status]!() ?? initial();
  }

  @override
  String toString() {
    return 'UserSettingState{status: $status, message: $message, sucursales: $sucursales, companies: $companies}';
  }

  @override
  List<Object?> get props => [status, message, sucursales, companies];
}
