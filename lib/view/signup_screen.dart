import 'package:flutter/material.dart';
import 'package:foodapp/config/custom_decor.dart';
import 'package:foodapp/controller/account_controller.dart';
import 'package:foodapp/view/login_screen.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AccountController c = Get.put(AccountController());

    return SafeArea(
        child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            appBar: AppBar(title: Text('Register')),
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
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    // controller:,
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    // controller:,
                    decoration: InputDecoration(labelText: 'Confirm Password'),
                  ),
                ),
                // Obx(
                //     () =>
                //      c.isLoading.value
                //         ? CircularProgressIndicator()
                //         :
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: CustomWidgets().buildActionButton(
                    context: context,
                    text: 'Register',
                    color: Theme.of(context).colorScheme.onSecondary,
                    onPressed: () => c.register(),
                  ),
                ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? '),
                    InkWell(
                      onTap: () => Get.offAll(LoginScreen()),
                      child: Text(
                        'Login',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            )));
  }
}
