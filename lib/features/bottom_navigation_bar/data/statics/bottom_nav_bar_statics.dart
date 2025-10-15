import 'package:fatto/features/categories/presentation/screens/categories_screen.dart';
import 'package:fatto/features/categories/presentation/widgets/custom_categories_app_bar.dart';
import 'package:fatto/features/home/presentation/screens/home_screen.dart';
import 'package:fatto/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:fatto/features/wishlist/presentation/screens/wishlist_screen.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../my_cart/prsentation/screens/my_cart_screen.dart';
import '../../../profile/presentation/screens/profile_screen.dart';
import '../mdoels/bottom_nav_bar_model.dart';

class BottomNavBarStatics {
  static List<BottomNavBarModel> screens = [
    BottomNavBarModel(
      title: "Home",
      screen: HomeScreen(),
      unSelectedIcon: AppAssets.iconsHome,
      selectedIcon: AppAssets.iconsHomeFilled,
      appBar: CustomHomeAppBar(),
    ),
    BottomNavBarModel(
      title: "Categories",
      screen: CategoriesScreen(),
      unSelectedIcon: AppAssets.iconsCategory,
      selectedIcon: AppAssets.iconsCategoryFilled,
      appBar: CustomCategoriesAppBar(),
    ),
    BottomNavBarModel(
      title: "My Cart",
      screen: MyCartScreen(),
      unSelectedIcon: AppAssets.iconsMyCart,
      selectedIcon: AppAssets.iconsMyCartFilled,
    ),
    BottomNavBarModel(
      title: "Wishlist",
      screen: WishlistScreen(),
      unSelectedIcon: AppAssets.iconsWishlist,
      selectedIcon: AppAssets.iconsWishlistFilled,
    ),
    BottomNavBarModel(
      title: "Profile",
      screen: ProfileScreen(),
      unSelectedIcon: AppAssets.iconsProfile,
      selectedIcon: AppAssets.iconsProfileFilled,
    ),
  ];
}
