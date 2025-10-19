import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class ThemeToggle extends StatefulWidget {
  const ThemeToggle({super.key});

  @override
  State<ThemeToggle> createState() => _ThemeToggleState();
}

class _ThemeToggleState extends State<ThemeToggle> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8,
      child: Switch(
        value: value,
        onChanged: (newValue) => setState(() => value = newValue),
        activeThumbColor: AppColors.primaryColor,
        inactiveThumbColor: AppColors.fontWhiteColor,
        inactiveTrackColor: AppColors.fontSubtitleColor,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
