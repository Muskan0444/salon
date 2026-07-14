import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:salon/core/theme/app_colors.dart';

class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              colors: [AppColors.primary, Color(0xffF06292)],
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withOpacity(.35),
                blurRadius: 35,
                spreadRadius: 6,
              ),
            ],
          ),
          child: const Icon(Icons.content_cut, color: Colors.white, size: 60),
        )
        .animate(onPlay: (c) => c.repeat(reverse: true))
        .scale(
          begin: const Offset(.95, .95),
          end: const Offset(1.05, 1.05),
          duration: 1800.ms,
        );
  }
}
