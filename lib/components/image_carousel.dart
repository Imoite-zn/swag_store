import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {

  final myItems = [
    Image.asset('lib/images/logo.png'),
    Image.asset('lib/images/addidas_logo.jpg'),
    Image.asset('lib/images/new_balance_logo.jpg'),
    Image.asset('lib/images/puma_logo.jpg'),
    Image.asset('lib/images/jordan_logo.webp'),
    Image.asset('lib/images/converse_logo.jpg'),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            CarouselSlider(
              items: myItems,
              options: CarouselOptions(
                viewportFraction: 1.0,
                height: 200,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },

              )
              )
          ],
        )
      ),
    );
  }
}