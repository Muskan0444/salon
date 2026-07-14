import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon/core/theme/app_colors.dart';
import 'package:salon/features/onboarding/widgets/gradient_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../data/onboarding_data.dart';
import '../widgets/onboarding_card.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();

  int currentPage = 0;

  bool get isLastPage => currentPage == OnboardingData.pages.length - 1;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void nextPage() {
    if (isLastPage) {
      context.go("/login");
      return;
    }

    controller.nextPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  context.go("/login");
                },
                child: const Text("Skip"),
              ),
            ),

            Expanded(
              child: PageView.builder(
                controller: controller,

                itemCount: OnboardingData.pages.length,

                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },

                itemBuilder: (_, index) {
                  final page = OnboardingData.pages[index];

                  return OnboardingCard(
                    image: page.image,
                    title: page.title,
                    subtitle: page.subtitle,
                  );
                },
              ),
            ),

            SmoothPageIndicator(
              controller: controller,
              count: OnboardingData.pages.length,
              effect: WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: AppColors.primary,
              ),
            ),

            const SizedBox(height: 35),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: GradientButton(
                text: isLastPage ? "Get Started" : "Next",
                onPressed: nextPage,
              ),
            ),

            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
