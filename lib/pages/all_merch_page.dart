import 'package:flutter/material.dart';

class AllMerchPage extends StatelessWidget {
  const AllMerchPage({super.key});

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
        child: Text('store page'),
      ),
    );
  }
}