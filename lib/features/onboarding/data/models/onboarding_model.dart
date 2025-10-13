import 'package:fatto/core/utils/app_assets.dart';

class OnboardingDataModel {
  final String title;
  final String subTitle;
  final String path;

  const OnboardingDataModel({
    required this.title,
    required this.subTitle,
    required this.path,
  });
  static const List<OnboardingDataModel> onboardingData = [
    OnboardingDataModel(
      title: 'Explore a wide range of products',
      subTitle:
      'Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.',
      path: AppAssets.onboardingBuy,
    ),
    OnboardingDataModel(
      title: 'Unlock exclusive offers and discounts',
      subTitle:
      'Get access to limited-time deals and special promotions available only to our valued customers.',
      path: AppAssets.onboardingVoucher,
    ),
    OnboardingDataModel(
      title: 'Safe and secure payments',
      subTitle:
      'QuickMart employs industry-leading encryption and trusted payment gateways to safeguard your financial information.',
      path: AppAssets.onboardingVisa,
    ),
  ];

}

