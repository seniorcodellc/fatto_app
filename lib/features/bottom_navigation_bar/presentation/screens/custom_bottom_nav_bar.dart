import 'package:fatto/core/utils/app_styles.dart';
import 'package:fatto/features/bottom_navigation_bar/data/statics/bottom_nav_bar_statics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/app_colors.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});
  static const route = "nav_screen";

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavBarStatics.screens[selectedIndex].screen,
      bottomNavigationBar: Container(
        height: 65,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(BottomNavBarStatics.screens.length, (index) {
            final model = BottomNavBarStatics.screens[index];
            final bool isSelected = selectedIndex == index;

            return GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      isSelected ? model.selectedIcon! : model.unSelectedIcon!,
                      width: 26,
                      height: 26,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      model.title!,
                      style: AppStyles.font14Black.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
