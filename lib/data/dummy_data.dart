import '../models/service_model.dart';
import '../models/stylist_model.dart';

class DummyData {
  static List<String> categories = ["Hair", "Makeup", "Spa", "Nails", "Bridal"];

  static List<ServiceModel> services = [
    ServiceModel(
      name: "Hair Cut",

      image: "assets/images/haircut.jpg",

      price: "€25",

      duration: "30 min",
    ),

    ServiceModel(
      name: "Hair Color",

      image: "assets/images/color.jpg",

      price: "€80",

      duration: "2 hours",
    ),

    ServiceModel(
      name: "Facial",

      image: "assets/images/facial.webp",

      price: "€60",

      duration: "1 hour",
    ),

    ServiceModel(
      name: "Spa",

      image: "assets/images/spa.webp",

      price: "€45",

      duration: "45 min",
    ),
  ];

  static List<StylistModel> stylists = [
    StylistModel(
      name: "Emma",

      image: "assets/images/stylist.webp",

      speciality: "Hair Expert",

      rating: 4.9,
    ),

    StylistModel(
      name: "Sophia",

      image: "assets/images/stylist.webp",

      speciality: "Makeup Artist",

      rating: 4.8,
    ),

    StylistModel(
      name: "Olivia",

      image: "assets/images/stylist.webp",

      speciality: "Spa Specialist",

      rating: 4.7,
    ),
  ];
}
