import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voice_club_clone/domain/entities/app_user.dart';

part 'home_view_state.freezed.dart';

@freezed
class HomeViewState with _$HomeViewState {
  const factory HomeViewState.ready(AppUser user) = _HomeViewStateReady;
  const factory HomeViewState.loading() = _HomeViewStateLoading;
  const factory HomeViewState.error(String errorMessage) = _HomeViewStateError;
}
