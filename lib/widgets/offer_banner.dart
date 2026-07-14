import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';

class OfferBanner extends StatelessWidget {
  const OfferBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, Color(0xffE91E63)],
        ),

        borderRadius: BorderRadius.circular(25),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const Text(
                "20% OFF",

                style: TextStyle(
                  color: Colors.white,

                  fontSize: 28,

                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Hair Spa Treatment",

                style: TextStyle(color: Colors.white, fontSize: 16),
              ),

              const SizedBox(height: 15),

              SizedBox(
                width: MediaQuery.of(context).size.width / 1.15,

                child: ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,

                    foregroundColor: AppColors.primary,
                  ),

                  child: const Text("Book Now"),
                ),
              ),
            ],
          ),

          const Icon(Icons.content_cut, size: 70, color: Colors.white),
        ],
      ),
    );
  }
}
