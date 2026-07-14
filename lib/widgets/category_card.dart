import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final String title;

  const CategoryCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,

      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.secondary,

            child: const Icon(Icons.spa, color: AppColors.primary),
          ),

          const SizedBox(height: 8),

          Text(title, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
