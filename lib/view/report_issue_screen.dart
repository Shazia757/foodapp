import 'package:flutter/material.dart';
import 'package:foodapp/config/custom_decor.dart';
import 'package:foodapp/controller/issues_controller.dart';
import 'package:get/get.dart';

class ReportIssueScreen extends StatelessWidget {
  const ReportIssueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final IssuesController c = Get.put(IssuesController());

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Report Issue'),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CustomWidgets().textField(
                controller: c.descController,
                maxlines: 8,
                label: "Description",
                margin: EdgeInsets.only(bottom: 20)),
          ),
          CustomWidgets().buildActionButton(
            padding: EdgeInsets.all(12),
            context: context,
            onPressed: () {
              (c.descController.text.isEmpty)
                  ? SnackBar(content: Text('Invalid'))
                  :
                  // CustomWidgets.showSnackBar('Invalid', 'Please add description'): {
                  CustomWidgets().showConfirmationDialog(
                      title: "Report Issue",
                      message: "Are you sure you want to report the issue?",
                      onConfirm: () => c.reportIssue(),
                      data: Obx(
                        () => (c.isLoading.value)
                            ? CircularProgressIndicator()
                            : Text("Confirm",
                                style: TextStyle(color: Colors.red)),
                      ));
            },
            text: "Report",
            color: Theme.of(context).colorScheme.error,
          ),
        ],
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width > 800
          ? null
          : CustomNavBar(currentIndex: 1),
    );
  }
}
