import 'package:flutter/material.dart';
import 'package:shoe_app/components/bottom_navbar.dart';
import 'package:shoe_app/pages/cart_page.dart';
import 'package:shoe_app/pages/shop_page.dart';

class HomePage extends StatefulWidget{
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // selected index to control the bottom na bar
  int _selectedIndex = 0;

  //update index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    const ShopPage(),

    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
              icon: const Padding(
                padding:  EdgeInsets.only(left: 12.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                  ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }, 
              ),
        ),
      ),
        drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              children: [
                //logo
              DrawerHeader(
                child: Image.asset(
                  'lib/images/logo.png',
                  color: Colors.white,
                  ),
                  ),
                  
              //other pages
               Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                  ),
                ),
              ),

                Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/info');
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,),
                    title: Text(
                      'About',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                  ),
                ),
              ),

                Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,),
                    title: Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                  ),
                ),
              ),
              ],
            ),

                Padding(
                padding: EdgeInsets.only(left: 25.0, bottom: 25.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/logout');
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                  ),
                ),
              ),
            ],
          ),
          
         ),
         body: _pages[_selectedIndex],
        );
  }
}