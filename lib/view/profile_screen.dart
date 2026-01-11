import 'package:flutter/material.dart';
import 'package:foodapp/config/custom_decor.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              // controller:,
              decoration: InputDecoration(labelText: 'Full Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              // controller:,
              decoration: InputDecoration(labelText: 'Phone'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              // controller:,
              decoration: InputDecoration(labelText: 'Email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              // controller:,
              decoration: InputDecoration(labelText: 'State'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              // controller:,
              decoration: InputDecoration(labelText: 'District'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              // controller:,
              decoration: InputDecoration(labelText: 'City'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              // controller:,
              decoration: InputDecoration(labelText: 'Pincode'),
            ),
          ),
          // Obx(
          //     () =>
          //      c.isLoading.value
          //         ? CircularProgressIndicator()
          //         :

          // ),
        ],
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width > 800
          ? null
          : CustomNavBar(currentIndex: 3),
    );
  }
}
