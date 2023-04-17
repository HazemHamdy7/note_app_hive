// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app_hive/Screens/editPage/view/edit_note_view.dart';
import 'package:note_app_hive/models/note_model.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({Key? key, required this.note}) : super(key: key);
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                // contentPadding: EdgeInsets.all(0),
                title: Text(note.title,
                    style: TextStyle(color: Colors.black, fontSize: 24)),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(note.subTitle,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 18)),
                ),
                trailing: IconButton(
                    onPressed: () {
                      note.delete();
                    },
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                      size: 26,
                    ))),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.data,
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
