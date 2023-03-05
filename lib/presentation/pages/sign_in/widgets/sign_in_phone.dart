import 'package:flutter/material.dart';
import 'package:voice_club_clone/presentation/pages/sign_in/sign_in_view_model.dart';
import 'package:voice_club_clone/presentation/pages/sign_in/widgets/policy_and_terms.dart';
import 'package:voice_club_clone/presentation/pages/sign_in/widgets/sign_in_page_header.dart';
import 'package:voice_club_clone/presentation/theme/app_colors.dart';
import 'package:voice_club_clone/presentation/widgets/my_rounded_action_button.dart';

class SignInPhone extends StatelessWidget {
  const SignInPhone({super.key, required this.viewModel});

  final SignInViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              16.0,
            ),
            child: Center(
              child: Form(
                key: viewModel.phoneFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SignInPageHeader(),
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
                              color: AppColors.sasquatchSocks.withOpacity(0.2),
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
                              focusNode: viewModel.phoneFocusNode,
                              controller: viewModel.phoneTextController,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'Enter Mobile No',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: AppColors.gray),
                              ),
                              onFieldSubmitted: (value) =>
                                  viewModel.submitPhone(),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Phone Number is required.';
                                }
                                final regex =
                                    RegExp('^([0|\\+[0-9]{1,5})?([0-9]{10})\$');
                                if (regex.hasMatch(value)) {
                                  return null;
                                }

                                return 'Phone Number is invalid';
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const PolicyAndTerms(),
                    const SizedBox(height: 20),
                    MyRoundedActionButton(
                      onPressed: () => viewModel.submitPhone(),
                      text: 'Continue',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
