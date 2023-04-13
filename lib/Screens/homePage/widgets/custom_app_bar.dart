import 'package:flutter/material.dart';

import 'custom_icon_app_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: const [
          Text('Notes', style: TextStyle(fontSize: 24)),
          Spacer(),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
