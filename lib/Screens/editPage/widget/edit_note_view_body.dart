import 'package:flutter/material.dart';
import 'package:note_app_hive/Screens/homePage/widgets/custom_app_bar.dart';

import '../../homePage/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: const [
        SizedBox(height: 50),
        CustomAppBar(title: 'Edit Note', icon: Icons.check),
        CustomTextField(hint: 'Tilte'),
        SizedBox(height: 16),
        CustomTextField(hint: 'Content', maxLines: 5),
      ]),
    );
  }
}