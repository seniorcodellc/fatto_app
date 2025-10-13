import 'package:fatto/features/auth/forgot_password/screens/password_successfully_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/h_line.dart';
import '../../../../core/widgets/textfield_widget.dart';
import '../widgets/forgot_password_app_bar.dart';
class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({super.key});
  static final route = "create_password_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ForgotPasswordAppBar(number: '03/03', title: 'Create Password',),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HLine(thickness: 3.0,),
            Padding(padding:  EdgeInsets.symmetric(horizontal: 16.0.w,vertical: 8.0.h),
              child: Text('New Password',style: GoogleFonts.plusJakartaSans(fontSize: 25.sp,fontWeight: FontWeight.bold,color: AppColors.fontTitleColor),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Enter your new password and remember it.',style: GoogleFonts.plusJakartaSans(fontSize: 15.sp,fontWeight: FontWeight.w400,color: AppColors.fontSubtitleColor),),
            ),
            TextfieldWidget(name: 'Password', hintText: 'Enter your password',isPassword: true,),
            TextfieldWidget(name: 'Confirm Password', hintText: 'Enter your password',isPassword: true,),
            SizedBox(height: 24,),
            CustomButton(buttonText: 'Save', onTap: (){Get.to(PasswordSuccessfullyScreen());})
          ],
        ),
      ),
    );
  }
}
