// travel_model.dart
import 'dart:math';

Random random = Random();

class TravelDestination {
  final int id, price, review;
  final List<String>? image;
  final String name, description, category, location;
  final double rate;

  TravelDestination({
    required this.name,
    required this.price,
    required this.id,
    required this.category,
    required this.description,
    required this.review,
    required this.image,
    required this.rate,
    required this.location,
  });
}

String description = "This is a beautiful house known for its Tunisian architecture and scenic views.";

List<TravelDestination> myDestination = [
  TravelDestination(
    id: 1,
    name: "Dar El Bhar",
    category: 'popular',
    image: [
      'https://i.postimg.cc/8PKJPCzD/karsten-wurth-M84b-YZn-CMQg-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
    ],
    location: "Hammamet, Tunisia",
    review: random.nextInt(300) + 25,
    price: 1500,
    description: description,
    rate: 4.9,
  ),
  TravelDestination(
    id: 2,
    name: "Villa Salambo",
    category: 'popular',
    image: [
      'https://i.postimg.cc/RhG3tS17/luca-bravo-z-Ajdg-NXs-Meg-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
    ],
    location: "Hammamet, Tunisia",
    review: random.nextInt(300) + 25,
    price: 1200,
    description: description,
    rate: 4.8,
  ),

  TravelDestination(
    id: 22,
    name: "Villa Salambo",
    category: 'popular',
    image: [
      'https://i.postimg.cc/RhG3tS17/luca-bravo-z-Ajdg-NXs-Meg-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
    ],
    location: "Hammamet, Tunisia",
    review: random.nextInt(300) + 25,
    price: 1200,
    description: description,
    rate: 4.8,
  ),
  TravelDestination(
    id: 3,
    name: "Dar Hammamet",
    category: 'recommended',
    image: [
      'https://i.postimg.cc/8PKJPCzD/karsten-wurth-M84b-YZn-CMQg-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',],
    location: "Hammamet, Tunisia",
    review: random.nextInt(300) + 25,
    price: 1000,
    description: description,
    rate: 4.7,
  ),
  TravelDestination(
    id: 4,
    name: "Dar Nakhla",
    category: 'recommended',
    image: [
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
    ],
    location: "Hammamet, Tunisia",
    review: random.nextInt(300) + 25,
    price: 1300,
    description: description,
    rate: 4.5,
  ),
  TravelDestination(
    id: 5,
    name: "Dar Nakhla",
    category: 'recommended',
    image: [
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
    ],
    location: "Hammamet, Tunisia",
    review: random.nextInt(300) + 25,
    price: 1300,
    description: description,
    rate: 4.5,
  ),

  TravelDestination(
    id: 5,
    name: "Dar Nakhla",
    category: 'recommended',
    image: [
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
    ],
    location: "Hammamet, Tunisia",
    review: random.nextInt(300) + 25,
    price: 1300,
    description: description,
    rate: 4.5,
  ),

  TravelDestination(
    id: 5,
    name: "Dar Nakhla",
    category: 'recommended',
    image: [
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
    ],
    location: "Hammamet, Tunisia",
    review: random.nextInt(300) + 25,
    price: 1300,
    description: description,
    rate: 4.5,
  ),

  TravelDestination(
    id: 5,
    name: "Dar Nakhla",
    category: 'recommended',
    image: [
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
      'https://i.postimg.cc/HnTcjcMW/michele-tardivo-G0-On-Hccvwc-A-unsplash.jpg',
    ],
    location: "Hammamet, Tunisia",
    review: random.nextInt(300) + 25,
    price: 1300,
    description: description,
    rate: 4.5,
  ),
];
