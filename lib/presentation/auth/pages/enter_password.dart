import 'package:ecommerce/core/configs/theme/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/button/basic_app_button.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

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
      text: const TextSpan(
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        children: [
          TextSpan(text: "Forgot Password? "),
          TextSpan(text: 'reset'),
        ],
      ),
    );
  }
}
