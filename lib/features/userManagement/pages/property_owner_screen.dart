import 'package:flutter/material.dart';

class PropertyOwnersScreen extends StatelessWidget {
  const PropertyOwnersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property Owners'),
      ),
      body: const Center(
        child: Text(
          'Property Owners Management Coming Soon!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
