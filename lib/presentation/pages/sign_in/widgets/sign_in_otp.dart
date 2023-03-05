import 'package:flutter/material.dart';
import 'package:voice_club_clone/presentation/pages/sign_in/sign_in_view_model.dart';
import 'package:voice_club_clone/presentation/pages/sign_in/widgets/policy_and_terms.dart';
import 'package:voice_club_clone/presentation/pages/sign_in/widgets/sign_in_page_header.dart';
import 'package:voice_club_clone/presentation/theme/app_colors.dart';
import 'package:voice_club_clone/presentation/widgets/my_rounded_action_button.dart';

class SignInOtp extends StatelessWidget {
  const SignInOtp({
    super.key,
    required this.viewModel,
  });

  final SignInViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        viewModel.goBackToPhone();
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(
                16.0,
              ),
              child: Center(
                child: Form(
                  key: viewModel.otpFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SignInPageHeader(
                        canGoBack: true,
                        onPressedBackButton: () {
                          viewModel.goBackToPhone();
                        },
                      ),
                      Container(
                        height: 54,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(36),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    AppColors.sasquatchSocks.withOpacity(0.2),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.phone_iphone_outlined,
                                  size: 20,
                                  color: AppColors.sasquatchSocks,
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                focusNode: viewModel.otpFocusNode,
                                controller: viewModel.otpTextController,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'Enter OTP',
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: AppColors.gray),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'OTP is required.';
                                  }
                                  final regex = RegExp('^[0-9]{1,6}\$');
                                  if (regex.hasMatch(value)) {
                                    return null;
                                  }

                                  return 'OTP is invalid';
                                },
                                onFieldSubmitted: (value) =>
                                    viewModel.submitOtp(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const PolicyAndTerms(),
                      const SizedBox(height: 20),
                      MyRoundedActionButton(
                        onPressed: () => viewModel.submitOtp(),
                        text: 'Continue',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
