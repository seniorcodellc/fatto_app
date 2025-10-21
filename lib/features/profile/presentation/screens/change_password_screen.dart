import 'package:fatto/core/widgets/shared_email_and_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../auth/forgot_password/widgets/forgot_password_app_bar.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});
  static const routeName = 'change_password_screen';
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColors.fontWhiteColor),
    );
    return Scaffold(
      appBar: ForgotPasswordAppBar(number: '01/02', title: 'Change Password'),
      body: SharedEmailAndPasswordWidget(
        title: 'Old Password',
        subTitle: 'Enter old password to change the password.',
        textFieldName: 'Password',
        hint: 'Enter your password',
        buttonName: 'Continue',
        onTap: () {
          Navigator.pushNamed(context, "change-password-screen2");
        },
      ),
    );
  }
}
