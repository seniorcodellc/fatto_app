import 'package:flutter/material.dart';
import '../widgets/onboarding_body.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const String routeName = 'onboarding_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: const SafeArea(
        child: OnboardingBody(),
      ),
    );
  }
}