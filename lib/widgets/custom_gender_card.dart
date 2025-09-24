import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/gender.dart';

class CustomGenderCard extends StatelessWidget {
  final Gender gender;
  final VoidCallback onTap;
  final String text;

  const CustomGenderCard({
    super.key,
    required this.gender,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.17;
    final width = MediaQuery.of(context).size.width * 0.35;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: AppColors.accentBlueDarkColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: Text(text)),
      ),
    );
  }
}
