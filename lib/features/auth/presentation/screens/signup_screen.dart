import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/core/widgets/custom_button.dart';
import 'package:fatto/features/auth/presentation/widgets/signup_text.dart';
import 'package:fatto/features/auth/presentation/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/signup_google_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static final route = "signup_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              SignupText(),
              SizedBox(height: 18),
              TextfieldWidget(name: 'Full Name', hintText: 'Enter your name',),
              TextfieldWidget(name: 'Phone Number', hintText: 'Enter your number',),
              TextfieldWidget(name: 'Password', hintText: 'Enter your password',isPassword: true,),
              SizedBox(height:10),
              CustomButton(buttonText: 'Create Account', onTap: (){}, color: AppColors.primaryColor),
              SizedBox(height: 16,),
              SignupGoogleButton(buttonText: 'Signup With Google', onTap: () {  }, color: AppColors.fontWhiteColor),
            ],
          ),
        ),
      ),
    );
  }
}
