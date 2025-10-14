import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/set_password_successfully_widget.dart';
class PasswordSuccessfullyScreen extends StatelessWidget {
  const PasswordSuccessfullyScreen({super.key});
  static final route = "password_successfully_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SetPasswordSuccessfullyWidget(),
              CustomButton(buttonText: 'Login', onTap: () {Get.to(HomeScreen());},),
            ],
          ),
        ),
      ),
    );
  }
}
