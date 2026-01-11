import 'package:flutter/material.dart';
import 'package:foodapp/config/custom_decor.dart';
import 'package:foodapp/controller/restaurant_controller.dart';
import 'package:foodapp/database/local_storage.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RestaurantController c = Get.put(RestaurantController());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(),
      body: ListView(
        children: [
          Text(
            "Welcome, ${LocalStorage().readUser().name} !",
            overflow: TextOverflow.ellipsis,
          ),
          Text('Popular Restaurants'),
          SizedBox(
            height: 200,
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: c.restaurantsList.length,
              itemBuilder: (context, index) => ListTile(
                leading: Image.asset(
                  'assets/bg.jpg',
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                ),
                title: Text('Name'),
                subtitle: Text('Location'),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width > 800
          ? null
          : CustomNavBar(currentIndex: 0),
    );
  }
}
