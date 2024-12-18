import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/ad_widget.dart';
import 'package:responsive_app/widgets/most_view/most_viewed_screen.dart';
import 'package:responsive_app/widgets/popular_locations.dart';
import 'package:responsive_app/widgets/recommended_widget.dart';
import 'package:responsive_app/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double width = constraints.maxWidth;
            return Center(
              child: ListView(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Container(
                    color: const Color(0xFFF8F7FC),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        'Explore the world! By',
                        style: TextStyle(
                          fontSize: width < 600 ? 24 : 32, // Responsive font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: const Color(0xFFF8F7FC),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        'Travelling',
                        style: TextStyle(
                          fontSize: width < 600 ? 24 : 32, // Responsive font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SearchBarWidget(),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Popular Locations',
                      style: TextStyle(
                        fontSize: width < 600 ? 24 : 32, // Responsive font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const PopularLocations(),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Recommended',
                      style: TextStyle(
                        fontSize: width < 600 ? 24 : 32, // Responsive font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CarouselWidget(),
                  const SizedBox(height: 20),
                  const HostingAdCard(),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Most Viewed',
                      style: TextStyle(
                        fontSize: width < 600 ? 24 : 32, // Responsive font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const MostViewedPage(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
