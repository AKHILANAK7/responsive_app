import 'package:flutter/material.dart';

class PopularLocations extends StatelessWidget {
  const PopularLocations({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> customTexts = [
      'India',
      'Moscow',
      'USA',
      'Canada',
      'Japan'
    ];

    final List<String> imagePaths = [
      'assets/images/india.jpg',
      'assets/images/moscow.jpg',
      'assets/images/usa.jpg',
      'assets/images/canada.jpg',
      'assets/images/japan.jpg',
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 240, 
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: customTexts.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Stack(
                  children: [
                    // Asset Image
                    Image.asset(
                      imagePaths[index],
                      fit: BoxFit.cover,
                      width: 160, 
                      height: 240,
                    ),
                    Positioned(
                      bottom: 10, 
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          customTexts[index],
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.black,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
