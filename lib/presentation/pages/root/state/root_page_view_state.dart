import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_page_view_state.freezed.dart';

@freezed
class RootPageViewState with _$RootPageViewState {
  const factory RootPageViewState.auth() = _RootPageViewStateAuth;
  const factory RootPageViewState.user() = _RootPageViewStateUser;
  const factory RootPageViewState.loading(bool showSplashScreen) =
      _RootPageViewStateLoading;
  const factory RootPageViewState.error(String errorMessage) =
      _RootPageViewStateError;
}
