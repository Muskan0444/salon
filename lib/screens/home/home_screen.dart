import 'package:flutter/material.dart';

import '../../data/dummy_data.dart';

import '../../widgets/category_card.dart';

import '../../widgets/service_card.dart';

import '../../widgets/stylist_card.dart';

import '../../widgets/offer_banner.dart';

import '../../widgets/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const Text("Hello 👋", style: TextStyle(fontSize: 18)),

              const SizedBox(height: 5),

              const Text(
                "Welcome to Luxury Salon",

                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 25),

              TextField(
                decoration: InputDecoration(
                  hintText: "Search services",

                  prefixIcon: const Icon(Icons.search),
                ),
              ),

              const SizedBox(height: 25),

              const OfferBanner(),

              const SizedBox(height: 30),

              const Text(
                "Categories",

                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

              SizedBox(
                height: 100,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount: DummyData.categories.length,

                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),

                      child: CategoryCard(title: DummyData.categories[index]),
                    );
                  },
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Popular Services",

                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

              SizedBox(
                height: 220,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount: DummyData.services.length,

                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),

                      child: ServiceCard(service: DummyData.services[index]),
                    );
                  },
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Our Stylists",

                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

              SizedBox(
                height: 180,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount: DummyData.stylists.length,

                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),

                      child: StylistCard(stylist: DummyData.stylists[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigation(
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
