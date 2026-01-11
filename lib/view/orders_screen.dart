import 'package:flutter/material.dart';
import 'package:foodapp/config/custom_decor.dart';
import 'package:foodapp/view/report_issue_screen.dart';
import 'package:get/get.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(text: 'Current Order'),
            Tab(text: 'Past Orders'),
          ]),
        ),
        body: TabBarView(children: [
          Card(),
          SizedBox(
            height: 200,
            width: double.maxFinite,
            child: ListView(
              children: [
                SizedBox(
                  height: 200,
                  width: double.maxFinite,
                  child: ListView.builder(itemBuilder: (context, index) {
                    return SizedBox(
                      height: 200,
                      width: double.maxFinite,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Text('1'),
                          Text('Item'),
                          Text('Qty'),
                          Text('Price'),
                          Text('Date'),
                          Text('Time'),
                          Text('Restaurant name'),
                          InkWell(
                              onTap: () => Get.to(ReportIssueScreen()),
                              child: Text(
                                'Report',
                                style: TextStyle(
                                    decoration: TextDecoration.underline),
                              ))
                        ],
                      ),
                    );
                  }),
                )
              ],
            ),
          )
        ]),
        bottomNavigationBar: MediaQuery.of(context).size.width > 800
            ? null
            : CustomNavBar(currentIndex: 1),
      ),
    );
  }
}
