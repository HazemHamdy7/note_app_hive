import 'package:flutter/material.dart';
import 'package:note_app_hive/Screens/homePage/widgets/custom_app_bar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}
