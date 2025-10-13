import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/h_line.dart';
import '../../../../core/widgets/textfield_widget.dart';
import '../widgets/forgot_password_app_bar.dart';
import 'forgot_password_screen2.dart';
class ForgotPassword1Screen extends StatelessWidget {
  const ForgotPassword1Screen({super.key});
  static final route = "forgot_password1_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ForgotPasswordAppBar(number: '01/03', title: 'Forgot Password',),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HLine(thickness: 3.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Confirmation Number',style: GoogleFonts.plusJakartaSans(fontSize: 25.sp,fontWeight: FontWeight.bold,color: AppColors.fontTitleColor),),
            ),
            SizedBox(height: 8.0.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Enter your phone number for verification.',style: GoogleFonts.plusJakartaSans(fontSize: 15.sp,fontWeight: FontWeight.w400,color: AppColors.fontSubtitleColor),),
            ),
            TextfieldWidget(name: 'Phone Number', hintText: 'Enter your number',),
            SizedBox(height: 24,),
            CustomButton(buttonText: 'Send', onTap: (){Get.to(ForgotPassword2Screen());})
          ],
        ),
      ),
    );
  }
}
