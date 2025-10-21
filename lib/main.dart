import 'package:fatto/features/auth/forgot_password/screens/password_successfully_screen.dart';
import 'package:fatto/features/auth/forgot_password/screens/create_password_screen.dart';
import 'package:fatto/features/auth/forgot_password/screens/forgot_password_screen2.dart';
import 'package:fatto/features/categories/presentation/screens/search_screen.dart';
import 'package:fatto/features/checkout/presentation/screens/shipping_screen.dart';
import 'package:fatto/features/home/presentation/screens/exclusive_sales_screen.dart';
import 'package:fatto/features/categories/presentation/screens/fashion_screen.dart';
import 'package:fatto/features/categories/presentation/screens/product_listing_screen.dart';
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
import 'features/bottom_navigation_bar/presentation/screens/custom_bottom_nav_bar.dart';
import 'features/categories/presentation/screens/categories_screen.dart';
import 'features/checkout/presentation/screens/payment_screen.dart';
import 'features/home/presentation/screens/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/profile/presentation/screens/change_password_screen.dart';
import 'features/profile/presentation/screens/faqs_screen.dart';
import 'features/profile/presentation/screens/order_history_screen.dart';
import 'features/profile/presentation/screens/payment_method_screen.dart';
import 'features/profile/presentation/screens/privacy_policy_screen.dart';
import 'features/profile/presentation/screens/shipping_address_screen.dart';
import 'features/profile/presentation/screens/terms_and_conditions_screen.dart';

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
          theme: ThemeData(scaffoldBackgroundColor: AppColors.fontWhiteColor),
          debugShowCheckedModeBanner: false,
          initialRoute: 'splash_screen',
          routes: {
            'splash_screen': (context) => SplashScreen(),
            'home_screen': (context) => HomeScreen(),
            'onboarding_screen': (context) => OnboardingScreen(),
            'signup_screen': (context) => SignupScreen(),
            'number_verification_screen': (context) =>
                NumberVerificationScreen(),
            'login_screen': (context) => LoginScreen(),
            'forgot_password1_screen': (context) => ForgotPassword1Screen(),
            'forgot_password2_screen': (context) => ForgotPassword2Screen(),
            'create_password_screen': (context) => CreatePasswordScreen(),
            'product_details_screen': (context) => ProductDetailsScreen(),
            'password_successfully_screen': (context) =>
                PasswordSuccessfullyScreen(),
            'categories_screen': (context) => CategoriesScreen(),
            'fashion': (context) => ProductListingScreen(),
            'nav_screen': (context) => CustomBottomNavBar(),
            'fashion_screen': (context) => FashionScreen(),
            'sales_screen': (context) => ExclusiveSalesScreen(),
            'search_screen': (context) => SearchScreen(),
            'change_password_screen': (context) => ChangePasswordScreen(),
            'faqs_screen': (context) => FAQsScreen(),
            'order_history_screen': (context) => OrderHistoryScreen(),
            'payment_method_screen': (context) => PaymentMethodScreen(),
            'shipping_address_screen': (context) => ShippingAddressScreen(),
            'privacy_policy_screen': (context) => PrivacyPolicyScreen(),
            'shipping_screen': (context) => ShippingScreen(),
            'payment_screen': (context) => PaymentScreen(),
            'terms_and_conditions_screen': (context) =>
                TermsAndConditionsScreen(),
          },
        );
      },
    );
  }
}

class FaqsScreen {}
