import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_view_state.freezed.dart';

@freezed
class SignUpViewState with _$SignUpViewState {
  const factory SignUpViewState.ready() = _SignUpViewStatePhone;
  const factory SignUpViewState.loading() = _SignUpViewStateLoading;
  const factory SignUpViewState.error(String errorMessage) =
      _SignUpViewStateError;
}
