import 'package:flutter/material.dart';

class MostViewed3 extends StatelessWidget {
  const MostViewed3({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Card(
      elevation: 0, // Set elevation to 0 to remove the border/shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Optional: Keep the border radius
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section
          Center(
            child: Container(
              width: screenWidth * 0.9,  // Adjust container width to be responsive (90% of screen width)
              height: screenHeight * 0.25,  // Adjust container height to be responsive (25% of screen height)
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      'assets/images/house/house7.jpg',
                      width: double.infinity,  // Make the image fill the container width
                      height: double.infinity, // Make the image fill the container height
                      fit: BoxFit.cover,  // Ensure the image covers the entire container
                    ),
                  ),
                  const Positioned(
                    top: 16,
                    right: 16,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.01, horizontal: screenWidth * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Price and Rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '\$120 ',
                          style: TextStyle(
                            fontSize: screenWidth * 0.05, // Responsive font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '/ Night',
                          style: TextStyle(fontSize: screenWidth * 0.04), // Responsive font size
                        ),
                        Icon(
                          Icons.flash_on,
                          size: screenWidth * 0.04, // Responsive icon size
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: screenWidth * 0.04, // Responsive icon size
                          color: Colors.red,
                        ),
                        Text(
                          '4',
                          style: TextStyle(fontSize: screenWidth * 0.04), // Responsive font size
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.01), // Responsive spacing
                // Title and Description
                Text(
                  'Carinthia Lake see Breakfast',
                  style: TextStyle(
                    fontSize: screenWidth * 0.045, // Responsive font size
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: screenHeight * 0.005), // Responsive spacing
                Text(
                  'Private room / 4 beds',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: screenWidth * 0.04, // Responsive font size
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
