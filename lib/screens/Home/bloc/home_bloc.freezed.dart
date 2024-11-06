// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getcategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getcategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getcategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ongetcategories value) getcategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ongetcategories value)? getcategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ongetcategories value)? getcategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OngetcategoriesImplCopyWith<$Res> {
  factory _$$OngetcategoriesImplCopyWith(_$OngetcategoriesImpl value,
          $Res Function(_$OngetcategoriesImpl) then) =
      __$$OngetcategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OngetcategoriesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OngetcategoriesImpl>
    implements _$$OngetcategoriesImplCopyWith<$Res> {
  __$$OngetcategoriesImplCopyWithImpl(
      _$OngetcategoriesImpl _value, $Res Function(_$OngetcategoriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OngetcategoriesImpl implements Ongetcategories {
  const _$OngetcategoriesImpl();

  @override
  String toString() {
    return 'HomeEvent.getcategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OngetcategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getcategories,
  }) {
    return getcategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getcategories,
  }) {
    return getcategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getcategories,
    required TResult orElse(),
  }) {
    if (getcategories != null) {
      return getcategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ongetcategories value) getcategories,
  }) {
    return getcategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ongetcategories value)? getcategories,
  }) {
    return getcategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ongetcategories value)? getcategories,
    required TResult orElse(),
  }) {
    if (getcategories != null) {
      return getcategories(this);
    }
    return orElse();
  }
}

abstract class Ongetcategories implements HomeEvent {
  const factory Ongetcategories() = _$OngetcategoriesImpl;
}

/// @nodoc
mixin _$HomeState {
  bool? get isloadinggetcategories => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Products>>>?
      get categoriesFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  bool? get isgettingcategories => throw _privateConstructorUsedError;
  List<Products>? get categories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool? isloadinggetcategories,
      Option<Either<MainFailure, List<Products>>>?
          categoriesFailureOrSuccessOption,
      bool? isgettingcategories,
      List<Products>? categories});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloadinggetcategories = freezed,
    Object? categoriesFailureOrSuccessOption = freezed,
    Object? isgettingcategories = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      isloadinggetcategories: freezed == isloadinggetcategories
          ? _value.isloadinggetcategories
          : isloadinggetcategories // ignore: cast_nullable_to_non_nullable
              as bool?,
      categoriesFailureOrSuccessOption: freezed ==
              categoriesFailureOrSuccessOption
          ? _value.categoriesFailureOrSuccessOption
          : categoriesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Products>>>?,
      isgettingcategories: freezed == isgettingcategories
          ? _value.isgettingcategories
          : isgettingcategories // ignore: cast_nullable_to_non_nullable
              as bool?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Products>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isloadinggetcategories,
      Option<Either<MainFailure, List<Products>>>?
          categoriesFailureOrSuccessOption,
      bool? isgettingcategories,
      List<Products>? categories});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloadinggetcategories = freezed,
    Object? categoriesFailureOrSuccessOption = freezed,
    Object? isgettingcategories = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$HomeStateImpl(
      isloadinggetcategories: freezed == isloadinggetcategories
          ? _value.isloadinggetcategories
          : isloadinggetcategories // ignore: cast_nullable_to_non_nullable
              as bool?,
      categoriesFailureOrSuccessOption: freezed ==
              categoriesFailureOrSuccessOption
          ? _value.categoriesFailureOrSuccessOption
          : categoriesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Products>>>?,
      isgettingcategories: freezed == isgettingcategories
          ? _value.isgettingcategories
          : isgettingcategories // ignore: cast_nullable_to_non_nullable
              as bool?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Products>?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl(
      {this.isloadinggetcategories,
      this.categoriesFailureOrSuccessOption,
      this.isgettingcategories,
      final List<Products>? categories})
      : _categories = categories;

  @override
  final bool? isloadinggetcategories;
  @override
  final Option<Either<MainFailure, List<Products>>>?
      categoriesFailureOrSuccessOption;
  @override
  final bool? isgettingcategories;
  final List<Products>? _categories;
  @override
  List<Products>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState(isloadinggetcategories: $isloadinggetcategories, categoriesFailureOrSuccessOption: $categoriesFailureOrSuccessOption, isgettingcategories: $isgettingcategories, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isloadinggetcategories, isloadinggetcategories) ||
                other.isloadinggetcategories == isloadinggetcategories) &&
            (identical(other.categoriesFailureOrSuccessOption,
                    categoriesFailureOrSuccessOption) ||
                other.categoriesFailureOrSuccessOption ==
                    categoriesFailureOrSuccessOption) &&
            (identical(other.isgettingcategories, isgettingcategories) ||
                other.isgettingcategories == isgettingcategories) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isloadinggetcategories,
      categoriesFailureOrSuccessOption,
      isgettingcategories,
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {final bool? isloadinggetcategories,
      final Option<Either<MainFailure, List<Products>>>?
          categoriesFailureOrSuccessOption,
      final bool? isgettingcategories,
      final List<Products>? categories}) = _$HomeStateImpl;

  @override
  bool? get isloadinggetcategories;
  @override
  Option<Either<MainFailure, List<Products>>>?
      get categoriesFailureOrSuccessOption;
  @override
  bool? get isgettingcategories;
  @override
  List<Products>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
