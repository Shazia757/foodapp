import 'package:flutter/material.dart';
import 'package:foodapp/config/custom_decor.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(),
      body: Text('Profile'),
      bottomNavigationBar: MediaQuery.of(context).size.width > 800
          ? null
          : CustomNavBar(currentIndex: 3),
    );
  }
}
