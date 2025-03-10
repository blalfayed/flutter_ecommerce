import 'package:ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/core/configs/theme/app_colors.dart';
// import 'package:ecommerce/presentation/auth/pages/enter_password.dart';
import 'package:ecommerce/presentation/auth/pages/siginin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/button/basic_app_button.dart';
import '../../../data/auth/models/user_creation_req.dart';
import 'gender_and_age_selection.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _firstNameCon = TextEditingController();
  final TextEditingController _lastNameCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();

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
            _firstNameField(context),
            const SizedBox(
              height: 20,
            ),
            _lastNameField(context),
            const SizedBox(
              height: 20,
            ),
            _emailField(context),
            const SizedBox(
              height: 20,
            ),
            _passwordField(context),
            const SizedBox(
              height: 20,
            ),
            _continueButton(context),
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
      'Create Account',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
    );
  }

  Widget _firstNameField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Firstname'),
    );
  }

  Widget _lastNameField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Lastname '),
    );
  }

  Widget _emailField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Email Address'),
    );
  }

  Widget _passwordField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Password'),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(
            context,
            GenderAndAgeSelectionPage(
              userCreationReq: UserCreationReq(
                  firstName: _firstNameCon.text,
                  email: _emailCon.text,
                  lastName: _lastNameCon.text,
                  password: _passwordCon.text),
            ));
      },
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
              text: "Do you have an account? "),
          TextSpan(
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
              text: 'Signin',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  AppNavigator.pushReplacement(context, const SigininPage());
                }),
        ],
      ),
    );
  }
}
