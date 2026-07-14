import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme/app_colors.dart';

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
      context.go("/login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              width: 110,

              height: 110,

              decoration: const BoxDecoration(
                color: AppColors.primary,

                shape: BoxShape.circle,
              ),

              child: const Icon(
                Icons.content_cut,
                color: Colors.white,
                size: 55,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Luxury Salon",

              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Text(
              "Beauty & Wellness",
              style: TextStyle(color: Colors.grey.shade600),
            ),

            const SizedBox(height: 60),

            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
