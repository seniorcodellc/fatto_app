import 'package:fatto/features/auth/forgot_password/screens/create_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/h_line.dart';
import '../../../../core/widgets/otp_widget.dart';
import '../widgets/forgot_password_app_bar.dart';
class ForgotPassword2Screen extends StatelessWidget {
  const ForgotPassword2Screen({super.key});
  static final route = "forgot_password2_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ForgotPasswordAppBar(number: '02/03', title: 'Forgot Password',),
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HLine(thickness: 3.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.w),
              child: Text('Number Verification',style: GoogleFonts.plusJakartaSans(fontSize: 25.sp,fontWeight: FontWeight.bold,color: AppColors.fontTitleColor),),
            ),
            SizedBox(height: 8.0.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 18.0.w),
              child: Text('Enter the 6-digit verification code send to your phone number.',style: GoogleFonts.plusJakartaSans(fontSize: 15.sp,fontWeight: FontWeight.w400,color: AppColors.fontSubtitleColor),),
            ),
            OtpWidget(),
            Center(child: Text('Resend Code',style: GoogleFonts.plusJakartaSans(fontSize: 15.sp,fontWeight: FontWeight.w500,color: AppColors.primaryColor),)),
            SizedBox(height: 28.0.h,),
            CustomButton(buttonText: 'Proceed', onTap: (){Get.to(CreatePasswordScreen());})
          ],
        ),
      ),
    );
  }
}
