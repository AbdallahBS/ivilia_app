import 'package:flutter/material.dart';
import 'package:ovilia/models/travel_model.dart';

class Recommended extends StatelessWidget {
  final TravelDestination destination;
  const Recommended({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    // Define blueTextColor if not already defined
    const Color blueTextColor = Colors.blue;

    return Container(
      height: 105,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ), // BoxDecoration
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ), // EdgeInsets.symmetric
      child: Row(
        children: [
          Container(
            height: 95,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  destination.image![0],
                ), // NetworkImage
              ), // DecorationImage
            ), // BoxDecoration
          ), // Container
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  destination.name,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ), // TextStyle
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.black,
                      size: 16,
                    ), // Icon
                    const SizedBox(width: 5),
                    Text(
                      destination.location,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.6),
                      ), // TextStyle
                    ), // Text
                  ], // Row children
                ), // Row
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "${destination.rate}",
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ), // TextStyle
                          ), // TextSpan
                          TextSpan(
                            text: " /${destination.review} reviews",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.6),
                            ), // TextStyle
                          ), // TextSpan
                        ],
                      ), // TextSpan
                    ), // Text.rich
                  ], // Row children
                ), // Row
              ], // Column children
            ), // Column
          ), // Expanded
          Column(
            children: [
              const Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "\$${destination.price}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: blueTextColor,
                      ), // TextStyle
                    ), // TextSpan
                    TextSpan(
                      text: " /Person",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.6),
                      ), // TextStyle
                    ), // TextSpan
                  ],
                ), // TextSpan
              ), // Text.rich
            ], // Column children
          ), // Column
        ], // Row children
      ), // Row
    ); // Container
  }
}
