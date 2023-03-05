import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voice_club_clone/data/dto/app_user_dto.dart';

part 'app_user.freezed.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    required String name,
    required String phone,
    @Default(0.0) double balance,
  }) = _AppUser;
}

extension AppUserExtensionEntityToDto on AppUser {
  AppUserDto toDto() => AppUserDto(
        id: id,
        name: name,
        phone: phone,
        balance: balance,
      );
}
