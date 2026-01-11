import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/view/home_screen.dart';
import 'package:foodapp/view/orders_screen.dart';
import 'package:foodapp/view/profile_screen.dart';
import 'package:foodapp/view/wallet_screen.dart';

class CustomWidgets {
  Card textField({
    required TextEditingController controller,
    required String label,
    EdgeInsets margin = const EdgeInsets.symmetric(vertical: 5),
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 10),
    TextInputType? keyboardType,
    bool isEnabled = true,
    bool readOnly = false,
    bool? hideText,
    TextStyle? labelStyle,
    void Function()? onTap,
    List<TextInputFormatter>? inputFormatters,
    String? errorText,
    Widget? suffix,
    Color? color,
    int maxlines = 1,
    String? hintText,
    Widget? prefix,
  }) {
    return Card(
        color: color,
        margin: margin,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        child: Padding(
          padding: padding,
          child: TextField(
            controller: controller,
            readOnly: readOnly,
            enabled: isEnabled,
            onTap: onTap,
            obscureText: hideText ?? false,
            inputFormatters: inputFormatters,
            keyboardType: keyboardType,
            maxLines: maxlines,
            decoration: InputDecoration(
                hintText: hintText,
                errorText: errorText,
                labelText: label,
                border: InputBorder.none,
                labelStyle: labelStyle,
                suffix: suffix,
                prefix: prefix),
          ),
        ));
  }

  Widget buildActionButton({
    IconData? icon,
    required BuildContext context,
    required String text,
    Color? color,
    required VoidCallback onPressed,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    Color foregroundColor = Colors.white,
  }) {
    return Padding(
      padding: padding,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor,
          backgroundColor: color,
          minimumSize: Size(double.infinity, 48),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        icon: Icon(icon, color: Colors.white),
        label: Text(text, style: TextStyle(fontSize: 16)),
      ),
    );
  }
}

class CustomNavBar extends StatelessWidget {
  CustomNavBar({super.key, required this.currentIndex});
  final int currentIndex;
  final pages = [HomeScreen(), OrdersScreen(), WalletScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        if (currentIndex != value) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => pages[value],
          ));
        }
      },
      currentIndex: currentIndex,
      items: <BottomNavigationBarItem>[
        navBarItem("Home", icon: Icon(Icons.home), context),
        navBarItem("Orders", icon: Icon(Icons.blinds_closed_outlined), context),
        navBarItem("Wallet", icon: Icon(Icons.wallet_outlined), context),
        navBarItem("Profile", icon: Icon(Icons.person_2), context),
      ],
    );
  }

  BottomNavigationBarItem navBarItem(String label, BuildContext context,
      {required Widget icon}) {
    return BottomNavigationBarItem(
        icon: icon,
        label: label,
        backgroundColor: Theme.of(context).colorScheme.primary);
  }
}
