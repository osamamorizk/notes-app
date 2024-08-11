import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_application/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_application/models/note_model.dart';
import 'package:notes_application/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.color, required this.note});
  final Color color;
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return NotesEditView(
              note: note,
            );
          }),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  note.content,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(.7),
                  ),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 26,
                  ),
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchNotes();
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, top: 10),
              child: Text(
                note.date,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(.6),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
