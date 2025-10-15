import 'package:fatto/features/auth/forgot_password/screens/password_successfully_screen.dart';
import 'package:fatto/features/auth/forgot_password/screens/create_password_screen.dart';
import 'package:fatto/features/auth/forgot_password/screens/forgot_password_screen2.dart';
import 'package:fatto/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:fatto/features/product_details/presentation/screens/product_details_screen.dart';
import 'package:fatto/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/utils/app_colors.dart';
import 'features/auth/forgot_password/screens/forgot_password1_screen.dart';
import 'features/auth/login/presentation/screens/login_screen.dart';
import 'features/auth/signup/presentation/screens/number_verification_screen.dart';
import 'features/auth/signup/presentation/screens/signup_screen.dart';
import 'features/home/presentation/screens/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: AppColors.fontWhiteColor),
  );
  runApp(FattoApp());
}

class FattoApp extends StatelessWidget {
  const FattoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 923),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (BuildContext context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'splash_screen',
          routes: {
            'splash_screen': (context) => SplashScreen(),
            'home_screen': (context) => HomeScreen(),
            'onboarding_screen': (context) => OnboardingScreen(),
            'signup_screen': (context) => SignupScreen(),
            'number_verification_screen': (context) => NumberVerificationScreen(),
            'login_screen': (context) => LoginScreen(),
            'forgot_password1_screen': (context) => ForgotPassword1Screen(),
            'forgot_password2_screen': (context) => ForgotPassword2Screen(),
            'create_password_screen': (context) => CreatePasswordScreen(),
            'password_successfully_screen': (context) => PasswordSuccessfullyScreen(),
            'product_details_screen': (context) => ProductDetailsScreen(),
          },
        );
      },
    );
  }
}
