import 'package:flutter/material.dart';
import 'package:foodapp/config/custom_decor.dart';
import 'package:foodapp/view/signup_screen.dart';
import 'package:get/get.dart';

import '../controller/account_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AccountController c = Get.put(AccountController());

    return Scaffold(
      body: ListView(
        children: [
          Card(
              color: Theme.of(context).colorScheme.onTertiary,
              margin: const EdgeInsets.only(
                  top: 170, bottom: 170, left: 20, right: 20),
              elevation: 5,
              child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(children: [
                    Text(
                      "Login to your account",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    CustomWidgets().textField(
                      controller: c.userNameController,
                      label: 'Username',
                      color: Color.fromARGB(255, 244, 244, 244),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      errorText: c.errorMessage.value.isNotEmpty
                          ? c.errorMessage.value
                          : null,
                    ),
                    Obx(
                      () => SizedBox(
                          height: 65,
                          child: CustomWidgets().textField(
                            color: Colors.grey.shade100,
                            controller: c.passwordController,
                            hideText: c.isObscure.value,
                            label: "Password",
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            suffix: GestureDetector(
                              onTap: () => (c.isObscure.value)
                                  ? c.showPassword()
                                  : c.hidePassword(),
                              child: Icon(
                                c.isObscure.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Forgot Password?',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Obx(
                      () => c.isLoading.value
                          ? CircularProgressIndicator()
                          : CustomWidgets().buildActionButton(
                              context: context,
                              text: 'Login',
                              color: Theme.of(context).colorScheme.secondary,
                              onPressed: () => c.login(),
                            ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('No account yet? '),
                        InkWell(
                          onTap: () => Get.to(SignupScreen()),
                          child: Text(
                            'Register',
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    )
                  ]))),
          const Align(
              alignment: Alignment.bottomCenter, child: Text("Version 0.0.1")),
        ],
      ),
    );
  }
}
