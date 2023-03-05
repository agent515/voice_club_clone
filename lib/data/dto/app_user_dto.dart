import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';

part 'app_user_dto.freezed.dart';
part 'app_user_dto.g.dart';

@freezed
class AppUserDto with _$AppUserDto {
  const factory AppUserDto({
    required String id,
    required String name,
    required String phone,
    @Default(0.0) double balance,
  }) = _AppUserDto;

  factory AppUserDto.fromJson(Map<String, dynamic> data) =>
      _$AppUserDtoFromJson(data);
}

extension AppUserDtoExtensionDtoToEntity on AppUserDto {
  AppUser toEntity() => AppUser(
        id: id,
        name: name,
        phone: phone,
        balance: balance,
      );
}
