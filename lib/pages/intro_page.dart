import 'package:flutter/material.dart';
import 'package:shoe_app/components/image_carousel.dart';
import 'package:shoe_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage ({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ImageCarousel(),
              ),
          
              const SizedBox(height: 48,),
          
              //title
              const Text(
                'Just Do It',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
          
                ),
              ),
          
               const SizedBox(height: 24,),
          
              //title
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: const Text(
                  'Custom kicks for your feet',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              //start now button
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                    ),
                    ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: const Center(
                      child: Text(
                        "Shop Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          ),
                          ),
                    ),
                  ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}