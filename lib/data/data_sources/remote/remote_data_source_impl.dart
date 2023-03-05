import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voice_club_clone/core/errors/user_sign_up_remaining_error.dart';
import 'package:voice_club_clone/data/dto/app_user_dto.dart';
import 'package:voice_club_clone/core/errors/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:voice_club_clone/domain/data_sources/remote/remote_data_source.dart';

final remoteDataSource = Provider((ref) => RemoteDataSourceImpl());

class RemoteDataSourceImpl implements RemoteDataSource {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  CollectionReference<AppUserDto> getUserCollectionRef(String uid) =>
      _firestore.collection('users').withConverter<AppUserDto>(
            fromFirestore: (snapshot, _) =>
                AppUserDto.fromJson(snapshot.data()!),
            toFirestore: (user, _) => user.toJson(),
          );

  DocumentReference<AppUserDto> getUserDocumentRef(String uid) =>
      getUserCollectionRef(uid).doc(uid);

  @override
  Future<Either<AppError, AppUserDto>> getUser(String uid) async {
    try {
      DocumentReference<AppUserDto> docRef = getUserDocumentRef(uid);
      DocumentSnapshot<AppUserDto> documentSnapshot = await docRef.get();
      if (documentSnapshot.exists) {
        AppUserDto? userDto = documentSnapshot.data();
        if (userDto != null) {
          return Right(userDto);
        }
      }
      return Left(UserSignUpRemaningError());
    } catch (e) {
      print(e);
      return Left(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<AppError, void>> updateUser(AppUserDto appUserDto) async {
    try {
      CollectionReference<AppUserDto> collectionRef =
          getUserCollectionRef(appUserDto.id);
      await collectionRef.doc(appUserDto.id).set(appUserDto);

      return Left(AppError(message: 'User not found.'));
    } catch (e) {
      print(e);
      return Left(AppError(message: e.toString()));
    }
  }
}
