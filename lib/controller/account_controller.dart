import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/api.dart';
import 'package:foodapp/model/users_model.dart';
import 'package:foodapp/view/home_screen.dart';
import 'package:get/get.dart';

import '../database/local_storage.dart';

class AccountController extends GetxController {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxBool isObscure = true.obs;

  var isLoading = false.obs;
  var errorMessage = ''.obs;

  void showPassword() => isObscure.value = false;
  void hidePassword() => isObscure.value = true;

  @override
  onInit() {
    if (kDebugMode) {
      userNameController.text = '0000';
      passwordController.text = '0000';
    }

    super.onInit();
  }

  Future<void> login() async {
    errorMessage.value = '';

    final userName = userNameController.text;
    final password = passwordController.text;

    if (userName.isEmpty || password.isEmpty) {
      errorMessage.value = 'Please fill all fields!';
      SnackBar(content: Text("Error! Please fill all fields"));
      // CustomWidgets.showSnackBar('Error', 'Please fill all fields!');
      return;
    }
    isLoading.value = true;

    Api().login({'user_name': userName, 'password': password}).then(
      (response) async {
        if (response?.status == true && response?.data?.userName != null) {
          await LocalStorage().writeUser(response?.data ?? Users());
          await LocalStorage().writeToken(response?.token ?? '');

          // CustomWidgets.showSnackBar('Welcome', '${response?.data?.name}',
          //     icon: Icon(
          //       Icons.login,
          //       color: Colors.white,
          //     ));
          Get.offAll(() => HomeScreen());
        } else {
          errorMessage.value = response?.message ?? 'Failed to login!';
          // CustomWidgets.showSnackBar('Error', errorMessage.value);
        }
        isLoading.value = false;
      },
    );
  }

  Future<void> register() async {}
}
