import 'package:fatto/core/utils/app_assets.dart';

import '../models/personal_info_model.dart';

class ProfileDetailsStatic {
  static List<PersonalInfoModel> personalInfoList = [
    PersonalInfoModel(
      preIcon: AppAssets.iconsShippingBox,
      title: "Shipping Address",
      route: "shipping_address_screen",
    ),
    PersonalInfoModel(
      preIcon: AppAssets.iconsPayment,
      title: "Payment Method",
      route: "payment_method_screen",
    ),
    PersonalInfoModel(
      preIcon: AppAssets.iconsEdit,
      title: "Order History",
      route: "order_history_screen",
    ),
  ];

  static List<PersonalInfoModel> supportAndInfoList = [
    PersonalInfoModel(
      preIcon: AppAssets.iconsPrivacyPolicy,
      title: "Privacy Policy",
      route: "privacy_policy_screen",
    ),
    PersonalInfoModel(
      preIcon: AppAssets.iconsTermsConditions,
      title: "Terms & Conditions",
      route: "terms_and_conditions_screen",
    ),
    PersonalInfoModel(
      preIcon: AppAssets.iconsFAQs,
      title: "FAQs",
      route: "faqs_screen",
    ),
  ];

  static List<PersonalInfoModel> accountManagementList = [
    PersonalInfoModel(
      preIcon: AppAssets.iconsChangePassword,
      title: "Change Password",
      route: "change_password_screen",
    ),
    PersonalInfoModel(preIcon: AppAssets.iconsDarkTheme, title: "Dark Theme"),
  ];
}
