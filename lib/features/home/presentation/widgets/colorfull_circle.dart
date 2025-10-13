import 'package:flutter/material.dart';

class ColorfullCircle extends StatelessWidget {
  const ColorfullCircle({super.key, this.borderColor, required this.bgColor});
  final Color? borderColor;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(color: borderColor ?? Colors.transparent, width: 2),
        borderRadius: BorderRadius.circular(29),
      ),
    );
  }
}
