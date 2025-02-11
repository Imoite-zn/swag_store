import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_app/models/cart.dart';
import 'package:shoe_app/pages/info_page.dart';
import 'package:shoe_app/pages/intro_page.dart';
import 'package:shoe_app/pages/logout_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const IntroPage(),
          '/info': (context) => const InfoPage(),
          '/logout': (context) => const LogoutPage(),
        },
        // home: IntroPage(),
      )
    );
  }
}
