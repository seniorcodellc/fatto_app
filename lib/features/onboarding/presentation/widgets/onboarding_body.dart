import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../auth/signup/presentation/screens/signup_screen.dart';
import '../../data/models/onboarding_model.dart';
import 'onboarding_dots.dart';
import 'onboarding_item.dart';
import 'package:get/get.dart';
class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void nextPage() {
    if (_currentPage < OnboardingDataModel.onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
     Get.to(SignupScreen());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 650,
          child: PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            itemCount: OnboardingDataModel.onboardingData.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              final modelData = OnboardingDataModel.onboardingData[index];
              return OnboardingItem(onboardingDataModel: modelData,);
            },
          ),
        ),
        CustomButton(
          buttonText: _currentPage == OnboardingDataModel.onboardingData.length - 1 ? 'Get Started' : 'Next',
          onTap: nextPage,
        ),
        OnboardingDots(currentPage: _currentPage,),
      ],
    );
  }
}