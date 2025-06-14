// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_lang_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangeLangState {
  ChangeLangStateStatus get currStatus => throw _privateConstructorUsedError;
  String? get currentLangCode => throw _privateConstructorUsedError;

  /// Create a copy of ChangeLangState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeLangStateCopyWith<ChangeLangState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeLangStateCopyWith<$Res> {
  factory $ChangeLangStateCopyWith(
          ChangeLangState value, $Res Function(ChangeLangState) then) =
      _$ChangeLangStateCopyWithImpl<$Res, ChangeLangState>;
  @useResult
  $Res call({ChangeLangStateStatus currStatus, String? currentLangCode});

  $ChangeLangStateStatusCopyWith<$Res> get currStatus;
}

/// @nodoc
class _$ChangeLangStateCopyWithImpl<$Res, $Val extends ChangeLangState>
    implements $ChangeLangStateCopyWith<$Res> {
  _$ChangeLangStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeLangState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currStatus = null,
    Object? currentLangCode = freezed,
  }) {
    return _then(_value.copyWith(
      currStatus: null == currStatus
          ? _value.currStatus
          : currStatus // ignore: cast_nullable_to_non_nullable
              as ChangeLangStateStatus,
      currentLangCode: freezed == currentLangCode
          ? _value.currentLangCode
          : currentLangCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ChangeLangState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChangeLangStateStatusCopyWith<$Res> get currStatus {
    return $ChangeLangStateStatusCopyWith<$Res>(_value.currStatus, (value) {
      return _then(_value.copyWith(currStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangeLangStateImplCopyWith<$Res>
    implements $ChangeLangStateCopyWith<$Res> {
  factory _$$ChangeLangStateImplCopyWith(_$ChangeLangStateImpl value,
          $Res Function(_$ChangeLangStateImpl) then) =
      __$$ChangeLangStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChangeLangStateStatus currStatus, String? currentLangCode});

  @override
  $ChangeLangStateStatusCopyWith<$Res> get currStatus;
}

/// @nodoc
class __$$ChangeLangStateImplCopyWithImpl<$Res>
    extends _$ChangeLangStateCopyWithImpl<$Res, _$ChangeLangStateImpl>
    implements _$$ChangeLangStateImplCopyWith<$Res> {
  __$$ChangeLangStateImplCopyWithImpl(
      _$ChangeLangStateImpl _value, $Res Function(_$ChangeLangStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangeLangState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currStatus = null,
    Object? currentLangCode = freezed,
  }) {
    return _then(_$ChangeLangStateImpl(
      currStatus: null == currStatus
          ? _value.currStatus
          : currStatus // ignore: cast_nullable_to_non_nullable
              as ChangeLangStateStatus,
      currentLangCode: freezed == currentLangCode
          ? _value.currentLangCode
          : currentLangCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeLangStateImpl implements _ChangeLangState {
  const _$ChangeLangStateImpl({required this.currStatus, this.currentLangCode});

  @override
  final ChangeLangStateStatus currStatus;
  @override
  final String? currentLangCode;

  @override
  String toString() {
    return 'ChangeLangState(currStatus: $currStatus, currentLangCode: $currentLangCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLangStateImpl &&
            (identical(other.currStatus, currStatus) ||
                other.currStatus == currStatus) &&
            (identical(other.currentLangCode, currentLangCode) ||
                other.currentLangCode == currentLangCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currStatus, currentLangCode);

  /// Create a copy of ChangeLangState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLangStateImplCopyWith<_$ChangeLangStateImpl> get copyWith =>
      __$$ChangeLangStateImplCopyWithImpl<_$ChangeLangStateImpl>(
          this, _$identity);
}

abstract class _ChangeLangState implements ChangeLangState {
  const factory _ChangeLangState(
      {required final ChangeLangStateStatus currStatus,
      final String? currentLangCode}) = _$ChangeLangStateImpl;

  @override
  ChangeLangStateStatus get currStatus;
  @override
  String? get currentLangCode;

  /// Create a copy of ChangeLangState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeLangStateImplCopyWith<_$ChangeLangStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChangeLangStateStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() changeLangSuccess,
    required TResult Function() changeLangError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changeLangSuccess,
    TResult? Function()? changeLangError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changeLangSuccess,
    TResult Function()? changeLangError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ChangeLangSuccess value) changeLangSuccess,
    required TResult Function(ChangeLangError value) changeLangError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ChangeLangSuccess value)? changeLangSuccess,
    TResult? Function(ChangeLangError value)? changeLangError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ChangeLangSuccess value)? changeLangSuccess,
    TResult Function(ChangeLangError value)? changeLangError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeLangStateStatusCopyWith<$Res> {
  factory $ChangeLangStateStatusCopyWith(ChangeLangStateStatus value,
          $Res Function(ChangeLangStateStatus) then) =
      _$ChangeLangStateStatusCopyWithImpl<$Res, ChangeLangStateStatus>;
}

/// @nodoc
class _$ChangeLangStateStatusCopyWithImpl<$Res,
        $Val extends ChangeLangStateStatus>
    implements $ChangeLangStateStatusCopyWith<$Res> {
  _$ChangeLangStateStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeLangStateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChangeLangStateStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangeLangStateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChangeLangStateStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() changeLangSuccess,
    required TResult Function() changeLangError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changeLangSuccess,
    TResult? Function()? changeLangError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changeLangSuccess,
    TResult Function()? changeLangError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ChangeLangSuccess value) changeLangSuccess,
    required TResult Function(ChangeLangError value) changeLangError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ChangeLangSuccess value)? changeLangSuccess,
    TResult? Function(ChangeLangError value)? changeLangError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ChangeLangSuccess value)? changeLangSuccess,
    TResult Function(ChangeLangError value)? changeLangError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ChangeLangStateStatus {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChangeLangSuccessImplCopyWith<$Res> {
  factory _$$ChangeLangSuccessImplCopyWith(_$ChangeLangSuccessImpl value,
          $Res Function(_$ChangeLangSuccessImpl) then) =
      __$$ChangeLangSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeLangSuccessImplCopyWithImpl<$Res>
    extends _$ChangeLangStateStatusCopyWithImpl<$Res, _$ChangeLangSuccessImpl>
    implements _$$ChangeLangSuccessImplCopyWith<$Res> {
  __$$ChangeLangSuccessImplCopyWithImpl(_$ChangeLangSuccessImpl _value,
      $Res Function(_$ChangeLangSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangeLangStateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeLangSuccessImpl implements ChangeLangSuccess {
  const _$ChangeLangSuccessImpl();

  @override
  String toString() {
    return 'ChangeLangStateStatus.changeLangSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeLangSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() changeLangSuccess,
    required TResult Function() changeLangError,
  }) {
    return changeLangSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changeLangSuccess,
    TResult? Function()? changeLangError,
  }) {
    return changeLangSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changeLangSuccess,
    TResult Function()? changeLangError,
    required TResult orElse(),
  }) {
    if (changeLangSuccess != null) {
      return changeLangSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ChangeLangSuccess value) changeLangSuccess,
    required TResult Function(ChangeLangError value) changeLangError,
  }) {
    return changeLangSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ChangeLangSuccess value)? changeLangSuccess,
    TResult? Function(ChangeLangError value)? changeLangError,
  }) {
    return changeLangSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ChangeLangSuccess value)? changeLangSuccess,
    TResult Function(ChangeLangError value)? changeLangError,
    required TResult orElse(),
  }) {
    if (changeLangSuccess != null) {
      return changeLangSuccess(this);
    }
    return orElse();
  }
}

abstract class ChangeLangSuccess implements ChangeLangStateStatus {
  const factory ChangeLangSuccess() = _$ChangeLangSuccessImpl;
}

/// @nodoc
abstract class _$$ChangeLangErrorImplCopyWith<$Res> {
  factory _$$ChangeLangErrorImplCopyWith(_$ChangeLangErrorImpl value,
          $Res Function(_$ChangeLangErrorImpl) then) =
      __$$ChangeLangErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeLangErrorImplCopyWithImpl<$Res>
    extends _$ChangeLangStateStatusCopyWithImpl<$Res, _$ChangeLangErrorImpl>
    implements _$$ChangeLangErrorImplCopyWith<$Res> {
  __$$ChangeLangErrorImplCopyWithImpl(
      _$ChangeLangErrorImpl _value, $Res Function(_$ChangeLangErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangeLangStateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeLangErrorImpl implements ChangeLangError {
  const _$ChangeLangErrorImpl();

  @override
  String toString() {
    return 'ChangeLangStateStatus.changeLangError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeLangErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() changeLangSuccess,
    required TResult Function() changeLangError,
  }) {
    return changeLangError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changeLangSuccess,
    TResult? Function()? changeLangError,
  }) {
    return changeLangError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changeLangSuccess,
    TResult Function()? changeLangError,
    required TResult orElse(),
  }) {
    if (changeLangError != null) {
      return changeLangError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ChangeLangSuccess value) changeLangSuccess,
    required TResult Function(ChangeLangError value) changeLangError,
  }) {
    return changeLangError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ChangeLangSuccess value)? changeLangSuccess,
    TResult? Function(ChangeLangError value)? changeLangError,
  }) {
    return changeLangError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ChangeLangSuccess value)? changeLangSuccess,
    TResult Function(ChangeLangError value)? changeLangError,
    required TResult orElse(),
  }) {
    if (changeLangError != null) {
      return changeLangError(this);
    }
    return orElse();
  }
}

abstract class ChangeLangError implements ChangeLangStateStatus {
  const factory ChangeLangError() = _$ChangeLangErrorImpl;
}
