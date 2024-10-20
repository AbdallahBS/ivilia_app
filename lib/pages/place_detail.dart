import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ovilia/models/travel_model.dart';

class PlaceDetailScreen extends StatefulWidget {
  final TravelDestination destination;
  const PlaceDetailScreen({super.key, required this.destination});

  @override
  State<PlaceDetailScreen> createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen> with SingleTickerProviderStateMixin {
  PageController pageController = PageController();
  int pageView = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs: Overview and Review
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 64,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black),
                ),
                child: const Icon(Icons.arrow_back_ios_new),
              ),
            ),
          ),
          centerTitle: true,
          title: const Text(
            "Detail page",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          actions: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: const Icon(Icons.bookmark_outline),
            ),
            const SizedBox(width: 10),
          ],
          bottom: const TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(text: "Overview"),
              Tab(text: "Review"),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0, 5),
                            blurRadius: 7,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Stack(
                          children: [
                            PageView(
                              controller: pageController,
                              onPageChanged: (value) {
                                setState(() {
                                  pageView = value;
                                });
                              },
                              children: List.generate(
                                widget.destination.image!.length,
                                    (index) => Image.network(
                                  widget.destination.image![index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    margin: const EdgeInsets.only(right: 10, bottom: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          widget.destination.image!.length - 1 != pageView
                                              ? widget.destination.image![pageView + 1]
                                              : widget.destination.image![0],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  color: Colors.black.withOpacity(0.8),
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.destination.name,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        widget.destination.description,
                                        style: const TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(Icons.star, color: Colors.yellow, size: 20),
                                          const SizedBox(width: 5),
                                          Text(
                                            widget.destination.rate.toString(),
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Overview Tab content
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Overview",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  widget.destination.description!,
                                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                          ),
                          // Review Tab content
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Reviews",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                // Here you can add reviews or leave it empty for now
                                Text("No reviews yet.", style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.book_online, color: Colors.white),
                label: const Text(
                  "Reserve",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black.withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
