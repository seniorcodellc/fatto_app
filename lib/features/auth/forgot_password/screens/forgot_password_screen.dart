import 'package:fatto/core/widgets/shared_email_and_password_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../widgets/forgot_password_app_bar.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  static String route = "forgot_password1_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ForgotPasswordAppBar(number: '01/03', title: 'Forgot Password'),
      backgroundColor: AppColors.bgColor,
      body: SharedEmailAndPasswordWidget(
        title: 'Confirmation Number',
        subTitle: 'Enter your phone number for verification.',
        textFieldName: 'Phone Number',
        hint: 'Enter your number',
        buttonName: "Send",
        onTap: () {
          Navigator.pushNamed(context, "forgot_password2_screen");
        },
      ),
    );
  }
}
