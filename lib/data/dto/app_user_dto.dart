import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';

part 'app_user_dto.freezed.dart';

@freezed
class AppUserDto with _$AppUserDto {
  const factory AppUserDto({
    required String id,
    required String name,
    required String phone,
    required double balance,
  }) = _AppUserDto;
}

extension AppUserDtoExtensionEntityToDto on AppUserDto {
  AppUser toDto() => AppUser(
        id: id,
        name: name,
        phone: phone,
        balance: balance,
      );
}
