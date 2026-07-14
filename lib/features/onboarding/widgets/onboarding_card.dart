import 'package:flutter/material.dart';
import 'package:salon/core/theme/app_text_styles.dart';

class OnboardingCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const OnboardingCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        children: [
          const Spacer(),

          Image.asset(image, height: 300, fit: BoxFit.contain),

          const SizedBox(height: 40),

          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.heading,
          ),

          const SizedBox(height: 20),

          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.body,
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
