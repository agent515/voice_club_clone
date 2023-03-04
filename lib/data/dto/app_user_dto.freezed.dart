// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUserDto _$AppUserDtoFromJson(Map<String, dynamic> json) {
  return _AppUserDto.fromJson(json);
}

/// @nodoc
mixin _$AppUserDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserDtoCopyWith<AppUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserDtoCopyWith<$Res> {
  factory $AppUserDtoCopyWith(
          AppUserDto value, $Res Function(AppUserDto) then) =
      _$AppUserDtoCopyWithImpl<$Res, AppUserDto>;
  @useResult
  $Res call({String id, String name, String phone, double balance});
}

/// @nodoc
class _$AppUserDtoCopyWithImpl<$Res, $Val extends AppUserDto>
    implements $AppUserDtoCopyWith<$Res> {
  _$AppUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppUserDtoCopyWith<$Res>
    implements $AppUserDtoCopyWith<$Res> {
  factory _$$_AppUserDtoCopyWith(
          _$_AppUserDto value, $Res Function(_$_AppUserDto) then) =
      __$$_AppUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String phone, double balance});
}

/// @nodoc
class __$$_AppUserDtoCopyWithImpl<$Res>
    extends _$AppUserDtoCopyWithImpl<$Res, _$_AppUserDto>
    implements _$$_AppUserDtoCopyWith<$Res> {
  __$$_AppUserDtoCopyWithImpl(
      _$_AppUserDto _value, $Res Function(_$_AppUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? balance = null,
  }) {
    return _then(_$_AppUserDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUserDto implements _AppUserDto {
  const _$_AppUserDto(
      {required this.id,
      required this.name,
      required this.phone,
      required this.balance});

  factory _$_AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final double balance;

  @override
  String toString() {
    return 'AppUserDto(id: $id, name: $name, phone: $phone, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserDtoCopyWith<_$_AppUserDto> get copyWith =>
      __$$_AppUserDtoCopyWithImpl<_$_AppUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUserDtoToJson(
      this,
    );
  }
}

abstract class _AppUserDto implements AppUserDto {
  const factory _AppUserDto(
      {required final String id,
      required final String name,
      required final String phone,
      required final double balance}) = _$_AppUserDto;

  factory _AppUserDto.fromJson(Map<String, dynamic> json) =
      _$_AppUserDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  double get balance;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserDtoCopyWith<_$_AppUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
