// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookListState {
  BookListStateStatus get currStatus => throw _privateConstructorUsedError;
  List<BookEntity> get books => throw _privateConstructorUsedError;
  String? get searchTerm => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  Debouncer get debouncing => throw _privateConstructorUsedError;
  ScrollController? get scrollController => throw _privateConstructorUsedError;

  /// Create a copy of BookListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookListStateCopyWith<BookListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookListStateCopyWith<$Res> {
  factory $BookListStateCopyWith(
          BookListState value, $Res Function(BookListState) then) =
      _$BookListStateCopyWithImpl<$Res, BookListState>;
  @useResult
  $Res call(
      {BookListStateStatus currStatus,
      List<BookEntity> books,
      String? searchTerm,
      int page,
      Debouncer debouncing,
      ScrollController? scrollController});

  $BookListStateStatusCopyWith<$Res> get currStatus;
}

/// @nodoc
class _$BookListStateCopyWithImpl<$Res, $Val extends BookListState>
    implements $BookListStateCopyWith<$Res> {
  _$BookListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currStatus = null,
    Object? books = null,
    Object? searchTerm = freezed,
    Object? page = null,
    Object? debouncing = null,
    Object? scrollController = freezed,
  }) {
    return _then(_value.copyWith(
      currStatus: null == currStatus
          ? _value.currStatus
          : currStatus // ignore: cast_nullable_to_non_nullable
              as BookListStateStatus,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookEntity>,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      debouncing: null == debouncing
          ? _value.debouncing
          : debouncing // ignore: cast_nullable_to_non_nullable
              as Debouncer,
      scrollController: freezed == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController?,
    ) as $Val);
  }

  /// Create a copy of BookListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookListStateStatusCopyWith<$Res> get currStatus {
    return $BookListStateStatusCopyWith<$Res>(_value.currStatus, (value) {
      return _then(_value.copyWith(currStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookListStateImplCopyWith<$Res>
    implements $BookListStateCopyWith<$Res> {
  factory _$$BookListStateImplCopyWith(
          _$BookListStateImpl value, $Res Function(_$BookListStateImpl) then) =
      __$$BookListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BookListStateStatus currStatus,
      List<BookEntity> books,
      String? searchTerm,
      int page,
      Debouncer debouncing,
      ScrollController? scrollController});

  @override
  $BookListStateStatusCopyWith<$Res> get currStatus;
}

/// @nodoc
class __$$BookListStateImplCopyWithImpl<$Res>
    extends _$BookListStateCopyWithImpl<$Res, _$BookListStateImpl>
    implements _$$BookListStateImplCopyWith<$Res> {
  __$$BookListStateImplCopyWithImpl(
      _$BookListStateImpl _value, $Res Function(_$BookListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currStatus = null,
    Object? books = null,
    Object? searchTerm = freezed,
    Object? page = null,
    Object? debouncing = null,
    Object? scrollController = freezed,
  }) {
    return _then(_$BookListStateImpl(
      currStatus: null == currStatus
          ? _value.currStatus
          : currStatus // ignore: cast_nullable_to_non_nullable
              as BookListStateStatus,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookEntity>,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      debouncing: null == debouncing
          ? _value.debouncing
          : debouncing // ignore: cast_nullable_to_non_nullable
              as Debouncer,
      scrollController: freezed == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController?,
    ));
  }
}

/// @nodoc

class _$BookListStateImpl implements _BookListState {
  const _$BookListStateImpl(
      {required this.currStatus,
      required final List<BookEntity> books,
      this.searchTerm,
      this.page = 1,
      required this.debouncing,
      this.scrollController})
      : _books = books;

  @override
  final BookListStateStatus currStatus;
  final List<BookEntity> _books;
  @override
  List<BookEntity> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  final String? searchTerm;
  @override
  @JsonKey()
  final int page;
  @override
  final Debouncer debouncing;
  @override
  final ScrollController? scrollController;

  @override
  String toString() {
    return 'BookListState(currStatus: $currStatus, books: $books, searchTerm: $searchTerm, page: $page, debouncing: $debouncing, scrollController: $scrollController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookListStateImpl &&
            (identical(other.currStatus, currStatus) ||
                other.currStatus == currStatus) &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.debouncing, debouncing) ||
                other.debouncing == debouncing) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currStatus,
      const DeepCollectionEquality().hash(_books),
      searchTerm,
      page,
      debouncing,
      scrollController);

  /// Create a copy of BookListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookListStateImplCopyWith<_$BookListStateImpl> get copyWith =>
      __$$BookListStateImplCopyWithImpl<_$BookListStateImpl>(this, _$identity);
}

abstract class _BookListState implements BookListState {
  const factory _BookListState(
      {required final BookListStateStatus currStatus,
      required final List<BookEntity> books,
      final String? searchTerm,
      final int page,
      required final Debouncer debouncing,
      final ScrollController? scrollController}) = _$BookListStateImpl;

  @override
  BookListStateStatus get currStatus;
  @override
  List<BookEntity> get books;
  @override
  String? get searchTerm;
  @override
  int get page;
  @override
  Debouncer get debouncing;
  @override
  ScrollController? get scrollController;

  /// Create a copy of BookListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookListStateImplCopyWith<_$BookListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookListStateStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getBookListLoading,
    required TResult Function() getBookListSuccess,
    required TResult Function() getBookListError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getBookListLoading,
    TResult? Function()? getBookListSuccess,
    TResult? Function()? getBookListError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getBookListLoading,
    TResult Function()? getBookListSuccess,
    TResult Function()? getBookListError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetBookListLoading value) getBookListLoading,
    required TResult Function(GetBookListSuccess value) getBookListSuccess,
    required TResult Function(GetBookListError value) getBookListError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetBookListLoading value)? getBookListLoading,
    TResult? Function(GetBookListSuccess value)? getBookListSuccess,
    TResult? Function(GetBookListError value)? getBookListError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetBookListLoading value)? getBookListLoading,
    TResult Function(GetBookListSuccess value)? getBookListSuccess,
    TResult Function(GetBookListError value)? getBookListError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookListStateStatusCopyWith<$Res> {
  factory $BookListStateStatusCopyWith(
          BookListStateStatus value, $Res Function(BookListStateStatus) then) =
      _$BookListStateStatusCopyWithImpl<$Res, BookListStateStatus>;
}

/// @nodoc
class _$BookListStateStatusCopyWithImpl<$Res, $Val extends BookListStateStatus>
    implements $BookListStateStatusCopyWith<$Res> {
  _$BookListStateStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookListStateStatus
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
    extends _$BookListStateStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookListStateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BookListStateStatus.initial()';
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
    required TResult Function() getBookListLoading,
    required TResult Function() getBookListSuccess,
    required TResult Function() getBookListError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getBookListLoading,
    TResult? Function()? getBookListSuccess,
    TResult? Function()? getBookListError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getBookListLoading,
    TResult Function()? getBookListSuccess,
    TResult Function()? getBookListError,
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
    required TResult Function(GetBookListLoading value) getBookListLoading,
    required TResult Function(GetBookListSuccess value) getBookListSuccess,
    required TResult Function(GetBookListError value) getBookListError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetBookListLoading value)? getBookListLoading,
    TResult? Function(GetBookListSuccess value)? getBookListSuccess,
    TResult? Function(GetBookListError value)? getBookListError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetBookListLoading value)? getBookListLoading,
    TResult Function(GetBookListSuccess value)? getBookListSuccess,
    TResult Function(GetBookListError value)? getBookListError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BookListStateStatus {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetBookListLoadingImplCopyWith<$Res> {
  factory _$$GetBookListLoadingImplCopyWith(_$GetBookListLoadingImpl value,
          $Res Function(_$GetBookListLoadingImpl) then) =
      __$$GetBookListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBookListLoadingImplCopyWithImpl<$Res>
    extends _$BookListStateStatusCopyWithImpl<$Res, _$GetBookListLoadingImpl>
    implements _$$GetBookListLoadingImplCopyWith<$Res> {
  __$$GetBookListLoadingImplCopyWithImpl(_$GetBookListLoadingImpl _value,
      $Res Function(_$GetBookListLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookListStateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetBookListLoadingImpl implements GetBookListLoading {
  const _$GetBookListLoadingImpl();

  @override
  String toString() {
    return 'BookListStateStatus.getBookListLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBookListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getBookListLoading,
    required TResult Function() getBookListSuccess,
    required TResult Function() getBookListError,
  }) {
    return getBookListLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getBookListLoading,
    TResult? Function()? getBookListSuccess,
    TResult? Function()? getBookListError,
  }) {
    return getBookListLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getBookListLoading,
    TResult Function()? getBookListSuccess,
    TResult Function()? getBookListError,
    required TResult orElse(),
  }) {
    if (getBookListLoading != null) {
      return getBookListLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetBookListLoading value) getBookListLoading,
    required TResult Function(GetBookListSuccess value) getBookListSuccess,
    required TResult Function(GetBookListError value) getBookListError,
  }) {
    return getBookListLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetBookListLoading value)? getBookListLoading,
    TResult? Function(GetBookListSuccess value)? getBookListSuccess,
    TResult? Function(GetBookListError value)? getBookListError,
  }) {
    return getBookListLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetBookListLoading value)? getBookListLoading,
    TResult Function(GetBookListSuccess value)? getBookListSuccess,
    TResult Function(GetBookListError value)? getBookListError,
    required TResult orElse(),
  }) {
    if (getBookListLoading != null) {
      return getBookListLoading(this);
    }
    return orElse();
  }
}

abstract class GetBookListLoading implements BookListStateStatus {
  const factory GetBookListLoading() = _$GetBookListLoadingImpl;
}

/// @nodoc
abstract class _$$GetBookListSuccessImplCopyWith<$Res> {
  factory _$$GetBookListSuccessImplCopyWith(_$GetBookListSuccessImpl value,
          $Res Function(_$GetBookListSuccessImpl) then) =
      __$$GetBookListSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBookListSuccessImplCopyWithImpl<$Res>
    extends _$BookListStateStatusCopyWithImpl<$Res, _$GetBookListSuccessImpl>
    implements _$$GetBookListSuccessImplCopyWith<$Res> {
  __$$GetBookListSuccessImplCopyWithImpl(_$GetBookListSuccessImpl _value,
      $Res Function(_$GetBookListSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookListStateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetBookListSuccessImpl implements GetBookListSuccess {
  const _$GetBookListSuccessImpl();

  @override
  String toString() {
    return 'BookListStateStatus.getBookListSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBookListSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getBookListLoading,
    required TResult Function() getBookListSuccess,
    required TResult Function() getBookListError,
  }) {
    return getBookListSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getBookListLoading,
    TResult? Function()? getBookListSuccess,
    TResult? Function()? getBookListError,
  }) {
    return getBookListSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getBookListLoading,
    TResult Function()? getBookListSuccess,
    TResult Function()? getBookListError,
    required TResult orElse(),
  }) {
    if (getBookListSuccess != null) {
      return getBookListSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetBookListLoading value) getBookListLoading,
    required TResult Function(GetBookListSuccess value) getBookListSuccess,
    required TResult Function(GetBookListError value) getBookListError,
  }) {
    return getBookListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetBookListLoading value)? getBookListLoading,
    TResult? Function(GetBookListSuccess value)? getBookListSuccess,
    TResult? Function(GetBookListError value)? getBookListError,
  }) {
    return getBookListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetBookListLoading value)? getBookListLoading,
    TResult Function(GetBookListSuccess value)? getBookListSuccess,
    TResult Function(GetBookListError value)? getBookListError,
    required TResult orElse(),
  }) {
    if (getBookListSuccess != null) {
      return getBookListSuccess(this);
    }
    return orElse();
  }
}

abstract class GetBookListSuccess implements BookListStateStatus {
  const factory GetBookListSuccess() = _$GetBookListSuccessImpl;
}

/// @nodoc
abstract class _$$GetBookListErrorImplCopyWith<$Res> {
  factory _$$GetBookListErrorImplCopyWith(_$GetBookListErrorImpl value,
          $Res Function(_$GetBookListErrorImpl) then) =
      __$$GetBookListErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBookListErrorImplCopyWithImpl<$Res>
    extends _$BookListStateStatusCopyWithImpl<$Res, _$GetBookListErrorImpl>
    implements _$$GetBookListErrorImplCopyWith<$Res> {
  __$$GetBookListErrorImplCopyWithImpl(_$GetBookListErrorImpl _value,
      $Res Function(_$GetBookListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookListStateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetBookListErrorImpl implements GetBookListError {
  const _$GetBookListErrorImpl();

  @override
  String toString() {
    return 'BookListStateStatus.getBookListError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBookListErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getBookListLoading,
    required TResult Function() getBookListSuccess,
    required TResult Function() getBookListError,
  }) {
    return getBookListError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getBookListLoading,
    TResult? Function()? getBookListSuccess,
    TResult? Function()? getBookListError,
  }) {
    return getBookListError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getBookListLoading,
    TResult Function()? getBookListSuccess,
    TResult Function()? getBookListError,
    required TResult orElse(),
  }) {
    if (getBookListError != null) {
      return getBookListError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetBookListLoading value) getBookListLoading,
    required TResult Function(GetBookListSuccess value) getBookListSuccess,
    required TResult Function(GetBookListError value) getBookListError,
  }) {
    return getBookListError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetBookListLoading value)? getBookListLoading,
    TResult? Function(GetBookListSuccess value)? getBookListSuccess,
    TResult? Function(GetBookListError value)? getBookListError,
  }) {
    return getBookListError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetBookListLoading value)? getBookListLoading,
    TResult Function(GetBookListSuccess value)? getBookListSuccess,
    TResult Function(GetBookListError value)? getBookListError,
    required TResult orElse(),
  }) {
    if (getBookListError != null) {
      return getBookListError(this);
    }
    return orElse();
  }
}

abstract class GetBookListError implements BookListStateStatus {
  const factory GetBookListError() = _$GetBookListErrorImpl;
}
