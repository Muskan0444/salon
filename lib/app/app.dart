import 'package:flutter/material.dart';
import 'package:salon/core/routes/app_router.dart';
import 'package:salon/core/theme/app_theme.dart';

class SalonApp extends StatelessWidget {
  const SalonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Salon Luxe',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.light,

      routerConfig: AppRouter.router,
    );
  }
}
