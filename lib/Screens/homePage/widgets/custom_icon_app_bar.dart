import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, this.onPressed});
  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 30,
              color: Colors.white,
            )),
      ),
    );
  }
}
