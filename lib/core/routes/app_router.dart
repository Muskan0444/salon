import 'package:go_router/go_router.dart';
import 'package:salon/features/onboarding/presentation/onboarding_screen.dart';
import 'package:salon/features/splash/presentation/splash_screen.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: "/",

    routes: [
      GoRoute(path: "/", builder: (_, __) => const SplashScreen()),

      GoRoute(
        path: "/onboarding",
        builder: (_, __) => const OnboardingScreen(),
      ),
    ],
  );
}
