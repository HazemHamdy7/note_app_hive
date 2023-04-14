import 'package:flutter/material.dart';
import 'package:note_app_hive/Screens/editPage/view/edit_note_view.dart';
import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: NotesItem(),
              );
            }),
      ),
    );
  }
}
