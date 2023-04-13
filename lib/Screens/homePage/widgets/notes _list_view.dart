import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  // final data = const [
  //   Colors.black12,
  //   Colors.white12,
  //   Colors.blue,
  //   Colors.green,
  // ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: NotesItem(),
            );
          }),
    );
  }
}
