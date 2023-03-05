// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser user) ready,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser user)? ready,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser user)? ready,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeViewStateReady value) ready,
    required TResult Function(_HomeViewStateLoading value) loading,
    required TResult Function(_HomeViewStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeViewStateReady value)? ready,
    TResult? Function(_HomeViewStateLoading value)? loading,
    TResult? Function(_HomeViewStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeViewStateReady value)? ready,
    TResult Function(_HomeViewStateLoading value)? loading,
    TResult Function(_HomeViewStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateCopyWith<$Res> {
  factory $HomeViewStateCopyWith(
          HomeViewState value, $Res Function(HomeViewState) then) =
      _$HomeViewStateCopyWithImpl<$Res, HomeViewState>;
}

/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res, $Val extends HomeViewState>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HomeViewStateReadyCopyWith<$Res> {
  factory _$$_HomeViewStateReadyCopyWith(_$_HomeViewStateReady value,
          $Res Function(_$_HomeViewStateReady) then) =
      __$$_HomeViewStateReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_HomeViewStateReadyCopyWithImpl<$Res>
    extends _$HomeViewStateCopyWithImpl<$Res, _$_HomeViewStateReady>
    implements _$$_HomeViewStateReadyCopyWith<$Res> {
  __$$_HomeViewStateReadyCopyWithImpl(
      _$_HomeViewStateReady _value, $Res Function(_$_HomeViewStateReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_HomeViewStateReady(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_HomeViewStateReady implements _HomeViewStateReady {
  const _$_HomeViewStateReady(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'HomeViewState.ready(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeViewStateReady &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeViewStateReadyCopyWith<_$_HomeViewStateReady> get copyWith =>
      __$$_HomeViewStateReadyCopyWithImpl<_$_HomeViewStateReady>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser user) ready,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return ready(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser user)? ready,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return ready?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser user)? ready,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeViewStateReady value) ready,
    required TResult Function(_HomeViewStateLoading value) loading,
    required TResult Function(_HomeViewStateError value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeViewStateReady value)? ready,
    TResult? Function(_HomeViewStateLoading value)? loading,
    TResult? Function(_HomeViewStateError value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeViewStateReady value)? ready,
    TResult Function(_HomeViewStateLoading value)? loading,
    TResult Function(_HomeViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _HomeViewStateReady implements HomeViewState {
  const factory _HomeViewStateReady(final AppUser user) = _$_HomeViewStateReady;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$_HomeViewStateReadyCopyWith<_$_HomeViewStateReady> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeViewStateLoadingCopyWith<$Res> {
  factory _$$_HomeViewStateLoadingCopyWith(_$_HomeViewStateLoading value,
          $Res Function(_$_HomeViewStateLoading) then) =
      __$$_HomeViewStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeViewStateLoadingCopyWithImpl<$Res>
    extends _$HomeViewStateCopyWithImpl<$Res, _$_HomeViewStateLoading>
    implements _$$_HomeViewStateLoadingCopyWith<$Res> {
  __$$_HomeViewStateLoadingCopyWithImpl(_$_HomeViewStateLoading _value,
      $Res Function(_$_HomeViewStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeViewStateLoading implements _HomeViewStateLoading {
  const _$_HomeViewStateLoading();

  @override
  String toString() {
    return 'HomeViewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeViewStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser user) ready,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser user)? ready,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser user)? ready,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeViewStateReady value) ready,
    required TResult Function(_HomeViewStateLoading value) loading,
    required TResult Function(_HomeViewStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeViewStateReady value)? ready,
    TResult? Function(_HomeViewStateLoading value)? loading,
    TResult? Function(_HomeViewStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeViewStateReady value)? ready,
    TResult Function(_HomeViewStateLoading value)? loading,
    TResult Function(_HomeViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeViewStateLoading implements HomeViewState {
  const factory _HomeViewStateLoading() = _$_HomeViewStateLoading;
}

/// @nodoc
abstract class _$$_HomeViewStateErrorCopyWith<$Res> {
  factory _$$_HomeViewStateErrorCopyWith(_$_HomeViewStateError value,
          $Res Function(_$_HomeViewStateError) then) =
      __$$_HomeViewStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_HomeViewStateErrorCopyWithImpl<$Res>
    extends _$HomeViewStateCopyWithImpl<$Res, _$_HomeViewStateError>
    implements _$$_HomeViewStateErrorCopyWith<$Res> {
  __$$_HomeViewStateErrorCopyWithImpl(
      _$_HomeViewStateError _value, $Res Function(_$_HomeViewStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_HomeViewStateError(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeViewStateError implements _HomeViewStateError {
  const _$_HomeViewStateError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HomeViewState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeViewStateError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeViewStateErrorCopyWith<_$_HomeViewStateError> get copyWith =>
      __$$_HomeViewStateErrorCopyWithImpl<_$_HomeViewStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser user) ready,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser user)? ready,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser user)? ready,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeViewStateReady value) ready,
    required TResult Function(_HomeViewStateLoading value) loading,
    required TResult Function(_HomeViewStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeViewStateReady value)? ready,
    TResult? Function(_HomeViewStateLoading value)? loading,
    TResult? Function(_HomeViewStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeViewStateReady value)? ready,
    TResult Function(_HomeViewStateLoading value)? loading,
    TResult Function(_HomeViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HomeViewStateError implements HomeViewState {
  const factory _HomeViewStateError(final String errorMessage) =
      _$_HomeViewStateError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_HomeViewStateErrorCopyWith<_$_HomeViewStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
