import 'package:fatto/core/widgets/custom_button.dart';
import 'package:fatto/core/widgets/h_line.dart';
import 'package:fatto/features/auth/login/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/otp_widget.dart';
import '../../../../../core/widgets/verification_appBar.dart';
class NumberVerificationScreen extends StatelessWidget {
  const NumberVerificationScreen({super.key});
  static const String routeName = 'number_verification_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VerificationAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 18.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HLine(thickness: 3.0,),
              Text('Number Verification',style: GoogleFonts.plusJakartaSans(fontSize: 25.sp,fontWeight: FontWeight.bold,color: AppColors.fontTitleColor),),
              SizedBox(height: 8.0.h,),
              Text('Enter the 6-digit verification code send to your phone number.',style: GoogleFonts.plusJakartaSans(fontSize: 15.sp,fontWeight: FontWeight.w400,color: AppColors.fontSubtitleColor),),
              OtpWidget(),
              Center(child: Text('Resend Code',style: GoogleFonts.plusJakartaSans(fontSize: 15.sp,fontWeight: FontWeight.w500,color: AppColors.primaryColor),)),
              SizedBox(height: 28.0.h,),
              CustomButton(buttonText: 'Proceed', onTap: (){ Get.to(LoginScreen());
              })
            ],
          ),
        ),
      ),
    );
  }
}
