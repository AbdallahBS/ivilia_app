import 'package:ovilia/models/travel_model.dart';
import 'package:flutter/material.dart';
import 'package:ovilia/pages/place_detail.dart';
import '../widgets/popular_place.dart';
import 'package:ovilia/widgets/recommended.dart';

class TravelHomeScreen extends StatefulWidget {
  const TravelHomeScreen({super.key});

  @override
  State<TravelHomeScreen> createState() => _TravelHomeScreenState();
}

class _TravelHomeScreenState extends State<TravelHomeScreen> {
  int selectedPage = 0;
  List<IconData> icons = [
    Icons.home,
    Icons.search,
    Icons.confirmation_num_outlined,
    Icons.bookmark,
    Icons.person_2_outlined
  ];
  // Filtering popular destinations
  List<TravelDestination> popular = myDestination
      .where((element) => element.category == 'popular')
      .toList();

  // Filtering recommended destinations
  List<TravelDestination> recommended = myDestination
      .where((element) => element.category == 'recommended')
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: headerParts(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to start
          children: [
            const SizedBox(height: 20),
            // Popular Places Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Places",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            // Popular Places Horizontal List
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                children: List.generate(
                  popular.length,
                      (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => PlaceDetailScreen(destination: popular[index])));
                      },
                      child: PopularPlace(destination: popular[index]),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Spacing before the next section
            // Recommendations Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommendations for You",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Recommendations Horizontal List
            SizedBox( height: 300,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: List.generate(
                    recommended.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: GestureDetector(
                                              onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => PlaceDetailScreen(destination: recommended[index])));
                                              },
                                              child: Recommended(destination: recommended[index]),
                                            ),
                        ),
                  ),
                ),
              ),
            ),
            Align(alignment: Alignment.bottomCenter ,
              child: Column(
                mainAxisSize: MainAxisSize.min,

              children:
              [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal : 15),
                    child: Column (children: [Container(padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      vertical: 22,
                    ),
                      decoration: BoxDecoration(
                        color: Colors.black ,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(icons.length, (index)=> GestureDetector(

                          onTap: (){
                            setState(() {
                              selectedPage = index;
                            });
                          },
                          child: Icon(icons[index] , size: 32, color: selectedPage==index? Colors.white:Colors.white.withOpacity(0.4)),
                        ),)
                        ),
                    ),
                      const SizedBox(height: 30,)
                    ]
                      ,
                    ),
                  )
            ]

              ,)
              ,),
            const SizedBox(height: 20), // Optional spacing at the bottom
          ],
        ),
      ),

    );
  }

  AppBar headerParts() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white54,
      leadingWidth: 180,
      leading: const Row(
        children: [
          SizedBox(width: 10), // Reduced width to prevent overflow
          Icon(Icons.location_city, color: Colors.black),
          SizedBox(width: 10),
          Text(
            "Hammamet",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black12),
          ),
          padding: const EdgeInsets.all(7),
          child: const Stack(
            children: [
              Icon(
                Icons.notification_add,
                color: Colors.black12,
                size: 30,
              ),
              Positioned(
                top: 5,
                right: 5, // Adjusted position to fit within the icon
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 15), // Horizontal spacing
      ],
    );
  }
}
