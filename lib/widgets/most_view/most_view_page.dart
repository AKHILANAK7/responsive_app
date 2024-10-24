import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/most_view/most_viewed_widget.dart';

class MostViewedPage extends StatelessWidget {
  const MostViewedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
          children: [
            MostViewed(
              imageUrl: 'https://picsum.photos/seed/building/200/300',
              price: 120,
              rating: 4.5,
              title: 'Carinthia Lake see Breakfast',
              description: 'Private room / 4 beds',
            ),
            SizedBox(height: 20),
            MostViewed(
              imageUrl: 'https://picsum.photos/seed/home/200/300',
              price: 150,
              rating: 4.8,
              title: 'Mountain View Cabin',
              description: 'Entire cabin / 2 beds',
            ),
            SizedBox(height: 20),
            MostViewed(
              imageUrl: 'https://picsum.photos/seed/apartment/200/300',
              price: 200,
              rating: 4.7,
              title: 'City Apartment',
              description: 'Entire apartment / 3 beds',
            ),
          ],
        );
  }
}
