import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/onboarding_dots.dart';
import '../widgets/onboarding_main_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void nextPage() {
    if (_currentPage < AppStrings.onboardingData.length - 1) {
      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut,);
    } else {
      // Handle "Get Started" action (e.g., navigate to home screen)
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 650,
              child: PageView.builder(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                itemCount: AppStrings.onboardingData.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) => OnboardingMainWidget(
                  title: AppStrings.onboardingData[index]['title']!,
                  subTitle: AppStrings.onboardingData[index]['subTitle']!,
                  path: AppStrings.onboardingData[index]['path']!,
                ),
              ),
            ),
            CustomButton(buttonText: _currentPage == AppStrings.onboardingData.length - 1 ? 'Get Started' : 'Next', onTap: nextPage, color: AppColors.primaryColor,),
            OnboardingDots(currentPage: _currentPage,),
          ],
        ),
      ),
    );
  }
}