import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {

  void Function (int)? onTabChange;
  MyBottomNavBar ({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(
          color: Colors.black),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 40,
        gap: 8,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home, 
            text: 'Shop'
            ),
          GButton(
            icon: Icons.shopping_bag_rounded, 
            text: 'Cart'),
        ],
        ),
    );
    
  }
}
