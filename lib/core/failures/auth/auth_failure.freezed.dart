// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() invalidtoken,
    required TResult Function() invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? invalidtoken,
    TResult? Function()? invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? invalidtoken,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidToken value) invalidtoken,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InvalidToken value)? invalidtoken,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidToken value)? invalidtoken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CancelledByUserImplCopyWith<$Res> {
  factory _$$CancelledByUserImplCopyWith(_$CancelledByUserImpl value,
          $Res Function(_$CancelledByUserImpl) then) =
      __$$CancelledByUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledByUserImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$CancelledByUserImpl>
    implements _$$CancelledByUserImplCopyWith<$Res> {
  __$$CancelledByUserImplCopyWithImpl(
      _$CancelledByUserImpl _value, $Res Function(_$CancelledByUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelledByUserImpl implements CancelledByUser {
  const _$CancelledByUserImpl();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledByUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() invalidtoken,
    required TResult Function() invalidCredentials,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? invalidtoken,
    TResult? Function()? invalidCredentials,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? invalidtoken,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidToken value) invalidtoken,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidCredentials,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InvalidToken value)? invalidtoken,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidCredentials,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidToken value)? invalidtoken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidCredentials,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUserImpl;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerErrorImpl implements ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() invalidtoken,
    required TResult Function() invalidCredentials,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? invalidtoken,
    TResult? Function()? invalidCredentials,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? invalidtoken,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidToken value) invalidtoken,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidCredentials,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InvalidToken value)? invalidtoken,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidCredentials,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidToken value)? invalidtoken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidCredentials,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$InvalidTokenImplCopyWith<$Res> {
  factory _$$InvalidTokenImplCopyWith(
          _$InvalidTokenImpl value, $Res Function(_$InvalidTokenImpl) then) =
      __$$InvalidTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidTokenImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InvalidTokenImpl>
    implements _$$InvalidTokenImplCopyWith<$Res> {
  __$$InvalidTokenImplCopyWithImpl(
      _$InvalidTokenImpl _value, $Res Function(_$InvalidTokenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidTokenImpl implements InvalidToken {
  const _$InvalidTokenImpl();

  @override
  String toString() {
    return 'AuthFailure.invalidtoken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() invalidtoken,
    required TResult Function() invalidCredentials,
  }) {
    return invalidtoken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? invalidtoken,
    TResult? Function()? invalidCredentials,
  }) {
    return invalidtoken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? invalidtoken,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidtoken != null) {
      return invalidtoken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidToken value) invalidtoken,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidCredentials,
  }) {
    return invalidtoken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InvalidToken value)? invalidtoken,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidCredentials,
  }) {
    return invalidtoken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidToken value)? invalidtoken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidtoken != null) {
      return invalidtoken(this);
    }
    return orElse();
  }
}

abstract class InvalidToken implements AuthFailure {
  const factory InvalidToken() = _$InvalidTokenImpl;
}

/// @nodoc
abstract class _$$InvalidEmailAndPasswordCombinationImplCopyWith<$Res> {
  factory _$$InvalidEmailAndPasswordCombinationImplCopyWith(
          _$InvalidEmailAndPasswordCombinationImpl value,
          $Res Function(_$InvalidEmailAndPasswordCombinationImpl) then) =
      __$$InvalidEmailAndPasswordCombinationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailAndPasswordCombinationImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res,
        _$InvalidEmailAndPasswordCombinationImpl>
    implements _$$InvalidEmailAndPasswordCombinationImplCopyWith<$Res> {
  __$$InvalidEmailAndPasswordCombinationImplCopyWithImpl(
      _$InvalidEmailAndPasswordCombinationImpl _value,
      $Res Function(_$InvalidEmailAndPasswordCombinationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidEmailAndPasswordCombinationImpl
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombinationImpl();

  @override
  String toString() {
    return 'AuthFailure.invalidCredentials()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailAndPasswordCombinationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() invalidtoken,
    required TResult Function() invalidCredentials,
  }) {
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? invalidtoken,
    TResult? Function()? invalidCredentials,
  }) {
    return invalidCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? invalidtoken,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidToken value) invalidtoken,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidCredentials,
  }) {
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InvalidToken value)? invalidtoken,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidCredentials,
  }) {
    return invalidCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidToken value)? invalidtoken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombinationImpl;
}
