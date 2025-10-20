import 'package:fatto/core/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';
import 'custom_button.dart';
import 'h_line.dart';

class SharedEmailAndPasswordWidget extends StatelessWidget {
  SharedEmailAndPasswordWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.textFieldName,
    required this.hint,
    required this.buttonName,
    required this.onTap,
    this.suffixIcon,
  });
  final String title;
  final String subTitle;
  final String textFieldName;
  final String hint;
  final String buttonName;
  final VoidCallback onTap;
  Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HLine(thickness: 3.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              title,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.fontTitleColor,
              ),
            ),
          ),
          SizedBox(height: 8.0.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              subTitle,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.fontSubtitleColor,
              ),
            ),
          ),
          TextfieldWidget(name: textFieldName, hintText: hint),
          title == "New Password"
              ? TextfieldWidget(
                  name: "Confirm Password",
                  hintText: "Enter your password",
                )
              : Container(),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(buttonText: buttonName, onTap: onTap),
          ),
        ],
      ),
    );
  }
}
