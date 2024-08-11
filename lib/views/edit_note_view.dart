import 'package:flutter/material.dart';
import 'package:notes_application/models/note_model.dart';
import 'package:notes_application/widgets/edit_note_widget.dart';

class NotesEditView extends StatelessWidget {
  const NotesEditView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteWidget(
        note: note,
      ),
    );
  }
}
