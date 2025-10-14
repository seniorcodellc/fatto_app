import 'package:flutter/material.dart';

class ColorfullCircle extends StatelessWidget {
  const ColorfullCircle({super.key, required this.bgColor});
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(width: 2),
        borderRadius: BorderRadius.circular(29),
      ),
    );
  }
}
