import 'package:ecommerce/common/widgets/appbar/app_bar.dart';

import 'package:flutter/material.dart';

import '../../../common/widgets/button/basic_app_button.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
          ],
        ),
      ),
    );
  }

  Widget _sigininText(BuildContext context) {
    return const Text(
      'Forgot Password',
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
}
