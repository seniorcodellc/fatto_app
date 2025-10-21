import 'package:fatto/features/auth/forgot_password/screens/forgot_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/signup_google_button.dart';
import '../widgets/privacy_policy_text.dart';
import '../../../signup/presentation/widgets/signup_text.dart';
import '../../../../../core/widgets/textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static final route = "login_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              SignupText(
                title: 'Login',
                subTitle: 'Don\'t have an account?',
                coloredText: 'Signup',
              ),
              SizedBox(height: 18),
              TextfieldWidget(
                name: 'Phone Number',
                hintText: 'Enter your number',
              ),
              TextfieldWidget(
                name: 'Password',
                hintText: 'Enter your password',
                isPassword: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24.0,
                  horizontal: 16.0,
                ),
                child: Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Text(
                    'Forgot password?',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              CustomButton(
                buttonText: 'Login',
                onTap: () {
                  Get.to(ForgotPasswordScreen());
                },
              ),
              SizedBox(height: 16),
              SignupGoogleButton(
                buttonText: 'Signup With Google',
                onTap: () {},
                color: AppColors.bgColor,
              ),
              SizedBox(height: 180),
              PrivacyPolicyText(),
            ],
          ),
        ),
      ),
    );
  }
}
