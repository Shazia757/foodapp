import 'package:flutter/material.dart';

class ReportIssueScreen extends StatelessWidget {
  const ReportIssueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Text('Report Issue'),
      bottomNavigationBar: BottomNavigationBar(items: []),
    ));
  }
}
