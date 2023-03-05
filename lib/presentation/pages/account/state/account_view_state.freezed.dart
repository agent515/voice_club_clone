// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountViewState {
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
    required TResult Function(_AccountViewStateReady value) ready,
    required TResult Function(_AccountViewStateLoading value) loading,
    required TResult Function(_AccountViewStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountViewStateReady value)? ready,
    TResult? Function(_AccountViewStateLoading value)? loading,
    TResult? Function(_AccountViewStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountViewStateReady value)? ready,
    TResult Function(_AccountViewStateLoading value)? loading,
    TResult Function(_AccountViewStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountViewStateCopyWith<$Res> {
  factory $AccountViewStateCopyWith(
          AccountViewState value, $Res Function(AccountViewState) then) =
      _$AccountViewStateCopyWithImpl<$Res, AccountViewState>;
}

/// @nodoc
class _$AccountViewStateCopyWithImpl<$Res, $Val extends AccountViewState>
    implements $AccountViewStateCopyWith<$Res> {
  _$AccountViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AccountViewStateReadyCopyWith<$Res> {
  factory _$$_AccountViewStateReadyCopyWith(_$_AccountViewStateReady value,
          $Res Function(_$_AccountViewStateReady) then) =
      __$$_AccountViewStateReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AccountViewStateReadyCopyWithImpl<$Res>
    extends _$AccountViewStateCopyWithImpl<$Res, _$_AccountViewStateReady>
    implements _$$_AccountViewStateReadyCopyWith<$Res> {
  __$$_AccountViewStateReadyCopyWithImpl(_$_AccountViewStateReady _value,
      $Res Function(_$_AccountViewStateReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_AccountViewStateReady(
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

class _$_AccountViewStateReady implements _AccountViewStateReady {
  const _$_AccountViewStateReady(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'AccountViewState.ready(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountViewStateReady &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountViewStateReadyCopyWith<_$_AccountViewStateReady> get copyWith =>
      __$$_AccountViewStateReadyCopyWithImpl<_$_AccountViewStateReady>(
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
    required TResult Function(_AccountViewStateReady value) ready,
    required TResult Function(_AccountViewStateLoading value) loading,
    required TResult Function(_AccountViewStateError value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountViewStateReady value)? ready,
    TResult? Function(_AccountViewStateLoading value)? loading,
    TResult? Function(_AccountViewStateError value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountViewStateReady value)? ready,
    TResult Function(_AccountViewStateLoading value)? loading,
    TResult Function(_AccountViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _AccountViewStateReady implements AccountViewState {
  const factory _AccountViewStateReady(final AppUser user) =
      _$_AccountViewStateReady;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$_AccountViewStateReadyCopyWith<_$_AccountViewStateReady> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountViewStateLoadingCopyWith<$Res> {
  factory _$$_AccountViewStateLoadingCopyWith(_$_AccountViewStateLoading value,
          $Res Function(_$_AccountViewStateLoading) then) =
      __$$_AccountViewStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountViewStateLoadingCopyWithImpl<$Res>
    extends _$AccountViewStateCopyWithImpl<$Res, _$_AccountViewStateLoading>
    implements _$$_AccountViewStateLoadingCopyWith<$Res> {
  __$$_AccountViewStateLoadingCopyWithImpl(_$_AccountViewStateLoading _value,
      $Res Function(_$_AccountViewStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountViewStateLoading implements _AccountViewStateLoading {
  const _$_AccountViewStateLoading();

  @override
  String toString() {
    return 'AccountViewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountViewStateLoading);
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
    required TResult Function(_AccountViewStateReady value) ready,
    required TResult Function(_AccountViewStateLoading value) loading,
    required TResult Function(_AccountViewStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountViewStateReady value)? ready,
    TResult? Function(_AccountViewStateLoading value)? loading,
    TResult? Function(_AccountViewStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountViewStateReady value)? ready,
    TResult Function(_AccountViewStateLoading value)? loading,
    TResult Function(_AccountViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AccountViewStateLoading implements AccountViewState {
  const factory _AccountViewStateLoading() = _$_AccountViewStateLoading;
}

/// @nodoc
abstract class _$$_AccountViewStateErrorCopyWith<$Res> {
  factory _$$_AccountViewStateErrorCopyWith(_$_AccountViewStateError value,
          $Res Function(_$_AccountViewStateError) then) =
      __$$_AccountViewStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_AccountViewStateErrorCopyWithImpl<$Res>
    extends _$AccountViewStateCopyWithImpl<$Res, _$_AccountViewStateError>
    implements _$$_AccountViewStateErrorCopyWith<$Res> {
  __$$_AccountViewStateErrorCopyWithImpl(_$_AccountViewStateError _value,
      $Res Function(_$_AccountViewStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_AccountViewStateError(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountViewStateError implements _AccountViewStateError {
  const _$_AccountViewStateError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AccountViewState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountViewStateError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountViewStateErrorCopyWith<_$_AccountViewStateError> get copyWith =>
      __$$_AccountViewStateErrorCopyWithImpl<_$_AccountViewStateError>(
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
    required TResult Function(_AccountViewStateReady value) ready,
    required TResult Function(_AccountViewStateLoading value) loading,
    required TResult Function(_AccountViewStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountViewStateReady value)? ready,
    TResult? Function(_AccountViewStateLoading value)? loading,
    TResult? Function(_AccountViewStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountViewStateReady value)? ready,
    TResult Function(_AccountViewStateLoading value)? loading,
    TResult Function(_AccountViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AccountViewStateError implements AccountViewState {
  const factory _AccountViewStateError(final String errorMessage) =
      _$_AccountViewStateError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_AccountViewStateErrorCopyWith<_$_AccountViewStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
