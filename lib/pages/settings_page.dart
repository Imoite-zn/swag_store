import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
        child: Text('settings page'),
      ),
    );
  }
}