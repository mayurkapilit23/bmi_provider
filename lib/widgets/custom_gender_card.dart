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
    final width = MediaQuery.of(context).size.width * 0.42;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: AppColors.primaryColor2,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.accentBlueDarkColor, width: 2.5),

          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.024),
              // Shadow color with some transparency
              spreadRadius: 1,
              // How far the shadow spreads
              blurRadius: 20,
              // How blurry the shadow is
              offset: Offset(0, 5), // Changes position of shadow (x, y)
            ),
            // You can add multiple BoxShadows for more complex effects
            // For example, a very subtle, wider shadow underneath
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 5,
              blurRadius: 25,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Center(child: Text(text)),
      ),
    );
  }
}
