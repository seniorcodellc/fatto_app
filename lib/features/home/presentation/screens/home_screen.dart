import 'package:fatto/core/widgets/app_bottom_navigation_bar.dart';
import 'package:fatto/features/home/presentation/widgets/home_body.dart';
import 'package:fatto/features/my_cart/prsentation/screens/my_cart_screen.dart';
import 'package:flutter/material.dart';

import '../../../categories/presentation/screens/categories_screen.dart';
import '../../../profile/presentation/screens/profile_screen.dart';
import '../../../wishlist/presentation/screens/wishlist_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  List<Widget> tabs = [
    HomeBody(),
    CategoriesScreen(),
    MyCartScreen(),
    WishlistScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: tabs[index],
        bottomNavigationBar: AppBottomNavigationBar(
          selectedIndex: index,
          onTap: (int value) {
            setState(() {
              index = value;
            });
          },
        ),
      ),
    );
  }
}
