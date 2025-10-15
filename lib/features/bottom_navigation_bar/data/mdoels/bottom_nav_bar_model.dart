import 'package:flutter/cupertino.dart';

class BottomNavBarModel {
  final Widget? screen;
  final String? title;
  final String? unSelectedIcon;
  final String? selectedIcon;
  final PreferredSizeWidget? appBar;

  BottomNavBarModel({
    this.screen,
    this.title,
    this.unSelectedIcon,
    this.selectedIcon,
    this.appBar,
  });
}
