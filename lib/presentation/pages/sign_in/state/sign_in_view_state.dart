import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_view_state.freezed.dart';

@freezed
class SignInViewState with _$SignInViewState {
  const factory SignInViewState.phone() = _SignInViewStatePhone;
  const factory SignInViewState.otp() = _SignInViewStateOtp;
  const factory SignInViewState.loading() = _SignInViewStateLoading;
  const factory SignInViewState.error(String errorMessage) =
      _SignInViewStateError;
}
