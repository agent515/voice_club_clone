import 'package:dartz/dartz.dart';
import 'package:voice_club_clone/core/errors/app_error.dart';
import 'package:voice_club_clone/data/dto/app_user_dto.dart';

abstract class RemoteDataSource {
  Future<Either<AppError, AppUserDto>> getUser(String uid);
  Future<Either<AppError, void>> updateUser(AppUserDto user);
}
