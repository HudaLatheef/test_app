part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    bool? isrecentloading,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(isrecentloading: false);
}
