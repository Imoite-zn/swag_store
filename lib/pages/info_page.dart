import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});


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
        child: Text('info page'),
      ),
    );
  }
}