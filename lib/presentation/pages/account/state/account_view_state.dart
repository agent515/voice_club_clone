import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';

part 'account_view_state.freezed.dart';

@freezed
class AccountViewState with _$AccountViewState {
  const factory AccountViewState.ready(AppUser user) = _AccountViewStateReady;
  const factory AccountViewState.loading() = _AccountViewStateLoading;
  const factory AccountViewState.error(String errorMessage) =
      _AccountViewStateError;
}
