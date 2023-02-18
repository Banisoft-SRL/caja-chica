part of 'login_cubit.dart';

enum LoginStatus { initial, loading, success, error }

class LoginState extends Equatable {
  final LoginStatus status;
  final String? message;
  final bool? isPasswordVisible;
  final bool? isRememberMe;

  const LoginState({
    this.status = LoginStatus.initial,
    this.message,
    this.isPasswordVisible = false,
    this.isRememberMe = false,
  });

  LoginState copyWith({
    LoginStatus? status,
    String? message,
    bool? isPasswordVisible,
    bool? isRememberMe,
  }) {
    return LoginState(
      status: status ?? this.status,
      message: message ?? this.message,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      isRememberMe: isRememberMe ?? this.isRememberMe,
    );
  }

  T when<T>({
    required T Function() initial,
    required T Function() loading,
    required T Function() success,
    required T Function() error,
  }) {
    Map<LoginStatus, T Function()> states = {
      LoginStatus.initial: initial,
      LoginStatus.loading: loading,
      LoginStatus.success: () => success(),
      LoginStatus.error: () => error(),
    };
    return states[status]!() ?? initial();
  }

  @override
  String toString() {
    return 'LoginState{status: $status, message: $message, isPasswordVisible: $isPasswordVisible, isRememberMe: $isRememberMe}';
  }

  @override
  List<Object?> get props => [status, message, isPasswordVisible, isRememberMe];
}
