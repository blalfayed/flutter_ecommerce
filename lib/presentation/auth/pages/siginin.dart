import 'package:ecommerce/common/helpr/navigator/app_navigator.dart';
import 'package:ecommerce/core/configs/theme/theme/app_colors.dart';
import 'package:ecommerce/presentation/auth/pages/enter_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/button/basic_app_button.dart';

class SigininPage extends StatelessWidget {
  const SigininPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sigininText(context),
            const SizedBox(
              height: 20,
            ),
            _emailField(context),
            const SizedBox(
              height: 20,
            ),
            _continueButton(context),
            const SizedBox(
              height: 20,
            ),
            _createAccount(context)
          ],
        ),
      ),
    );
  }

  Widget _sigininText(BuildContext context) {
    return const Text(
      'Sigin in',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
    );
  }

  Widget _emailField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Enter Email '),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.pushReplacement(context, const EnterPasswordPage());
      },
      title: 'continue',
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      selectionColor: AppColors.primary,
      text: TextSpan(
        style: const TextStyle(fontWeight: FontWeight.bold),
        children: [
          const TextSpan(text: "Don't you have an account?"),
          TextSpan(
            text: 'create one',
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
