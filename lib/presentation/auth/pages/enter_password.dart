import 'package:ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/core/configs/theme/app_colors.dart';
import 'package:ecommerce/presentation/auth/pages/forgot_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/button/basic_app_button.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sigininText(context),
            const SizedBox(
              height: 20,
            ),
            _passwordField(context),
            const SizedBox(
              height: 20,
            ),
            _continueButton(),
            const SizedBox(
              height: 20,
            ),
            _forgotPassword(context)
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

  Widget _passwordField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Enter Password '),
    );
  }

  Widget _continueButton() {
    return BasicAppButton(
      onPressed: () {},
      title: 'continue',
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return RichText(
      selectionColor: AppColors.primary,
      text: TextSpan(
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        children: [
          const TextSpan(
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              text: "Forgot Password? "),
          TextSpan(
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
              text: 'reset',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  AppNavigator.push(context, const ForgotPasswordPage());
                }),
        ],
      ),
    );
  }
}
