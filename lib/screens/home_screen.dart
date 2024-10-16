import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/ad_widget.dart';
import 'package:responsive_app/widgets/most_view/most_viewed%201.dart';
import 'package:responsive_app/widgets/most_view/most_viewed%203.dart';
import 'package:responsive_app/widgets/most_view/most_viewed.dart';
import 'package:responsive_app/widgets/most_view/most_viewed2.dart';
import 'package:responsive_app/widgets/popular_locations.dart';
import 'package:responsive_app/widgets/recommended_widget.dart';
import 'package:responsive_app/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Container(
              color: const Color(0xFFF8F7FC),
              child: const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Explore the world! By',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: const Color(0xFFF8F7FC),
              child: const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Travelling',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SearchBarWidget(),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Popular Locations',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const PopularLocations(),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Recommended',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CarouselWidget(),
            const SizedBox(
              height: 20,
            ),
            const HostingAdCard(),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Most Viewed',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const MostViewed(),
            const SizedBox(
              height: 20,
            ),
            const MostViewed1(),
            const SizedBox(
              height: 20,
            ),
            const MostViewed2(),
            const SizedBox(
              height: 20,
            ),
            const MostViewed3(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
