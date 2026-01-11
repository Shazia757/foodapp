import 'package:flutter/material.dart';
import 'package:foodapp/config/custom_decor.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(),
      body: ListView(
        children: [
          Text('Available Balance', textAlign: TextAlign.center),
          Text('Rs. XXXX', textAlign: TextAlign.center),
          CustomWidgets().buildActionButton(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
            context: context,
            text: 'TOP UP',
            color: Theme.of(context).colorScheme.onSecondary,
            onPressed: () {},
          ),
          Text('Topup requests', textAlign: TextAlign.center),
          DataTable(
            columns: [
              DataColumn(label: Expanded(child: Text('1'))),
              DataColumn(label: Expanded(child: Text('Date'))),
              DataColumn(label: Expanded(child: Text('Time'))),
              DataColumn(label: Expanded(child: Text('Amount'))),
              DataColumn(label: Expanded(child: Text('Status')))
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
              ]),
            ],
          ),
          DataTable(
            columns: [
              DataColumn(label: Expanded(child: Text('Order ID'))),
              DataColumn(label: Expanded(child: Text('Date'))),
              DataColumn(label: Expanded(child: Text('Time'))),
              DataColumn(label: Expanded(child: Text('Amount'))),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
              ]),
            ],
          ),
        ],
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width > 800
          ? null
          : CustomNavBar(currentIndex: 2),
    );
  }
}
