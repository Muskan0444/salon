import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:salon/core/theme/app_colors.dart';
import 'package:salon/core/theme/app_text_styles.dart';
import '../widgets/animated_logo.dart';
import '../widgets/background_blobs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        context.go("/onboarding");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundBlobs(),

          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AnimatedLogo(),

                  const SizedBox(height: 40),

                  Text(
                    "Salon Luxe",
                    style: AppTextStyles.heading,
                  ).animate().fade(duration: 900.ms).slideY(begin: .3),

                  const SizedBox(height: 10),

                  Text(
                    "Beauty • Wellness • Luxury",
                    style: AppTextStyles.body,
                  ).animate(delay: 300.ms).fade(),

                  const SizedBox(height: 80),

                  SizedBox(
                    width: 38,
                    height: 38,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      color: AppColors.primary,
                    ),
                  ).animate().fade(delay: 500.ms),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
