// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUserDto _$$_AppUserDtoFromJson(Map<String, dynamic> json) =>
    _$_AppUserDto(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_AppUserDtoToJson(_$_AppUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'balance': instance.balance,
    };
