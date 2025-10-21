import 'package:fatto/core/widgets/shared_email_and_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../auth/forgot_password/widgets/forgot_password_app_bar.dart';

class ChangePasswordScreen2 extends StatelessWidget {
  const ChangePasswordScreen2({super.key});
  static String routeName = "change-password-screen2";
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColors.fontWhiteColor),
    );
    return Scaffold(
      appBar: ForgotPasswordAppBar(number: '02/02', title: 'Change Password'),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SharedEmailAndPasswordWidget(
              title: "New Password",
              subTitle: "Enter your new password and remember it.",
              textFieldName: "Password",
              hint: "Enter your password",
              buttonName: "Save",
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
