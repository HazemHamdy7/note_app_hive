import 'package:flutter/material.dart';

import 'custom_icon_app_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Text(title, style: const TextStyle(fontSize: 24)),
          const Spacer(),
          CustomSearchIcon(icon: icon),
        ],
      ),
    );
  }
}
