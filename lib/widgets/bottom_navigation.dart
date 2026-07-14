import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';

class BottomNavigation extends StatefulWidget {
  final int currentIndex;

  final Function(int) onTap;

  const BottomNavigation({
    super.key,

    required this.currentIndex,

    required this.onTap,
  });

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: widget.currentIndex,

      onDestinationSelected: widget.onTap,

      indicatorColor: AppColors.secondary,

      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),

          selectedIcon: Icon(Icons.home),

          label: "Home",
        ),

        NavigationDestination(
          icon: Icon(Icons.calendar_month_outlined),

          selectedIcon: Icon(Icons.calendar_month),

          label: "Booking",
        ),

        NavigationDestination(
          icon: Icon(Icons.local_offer_outlined),

          selectedIcon: Icon(Icons.local_offer),

          label: "Offers",
        ),

        NavigationDestination(
          icon: Icon(Icons.person_outline),

          selectedIcon: Icon(Icons.person),

          label: "Profile",
        ),
      ],
    );
  }
}
