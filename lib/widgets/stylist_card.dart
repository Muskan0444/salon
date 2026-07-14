import 'package:flutter/material.dart';

import '../models/stylist_model.dart';

class StylistCard extends StatelessWidget {
  final StylistModel stylist;

  const StylistCard({super.key, required this.stylist});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,

      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        children: [
          CircleAvatar(radius: 35, backgroundImage: AssetImage(stylist.image)),

          const SizedBox(height: 10),

          Text(
            stylist.name,

            style: const TextStyle(fontWeight: FontWeight.bold),
          ),

          Text(
            stylist.speciality,

            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const Icon(Icons.star, size: 16, color: Colors.orange),

              Text(stylist.rating.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
