import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IssuesController extends GetxController {
  final TextEditingController descController = TextEditingController();
  RxBool isLoading = false.obs;

  void reportIssue() {}
}
