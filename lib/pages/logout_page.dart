import 'package:flutter/material.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.green
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('logout page'),
      ),
    );
  }
}