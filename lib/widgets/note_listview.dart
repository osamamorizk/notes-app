import 'package:flutter/material.dart';
import 'package:notes_application/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final colors = const [
    Color(0xffFFCC80),
    Color.fromARGB(255, 113, 202, 243),
    Color.fromARGB(255, 243, 102, 92),
    Color(0xffFFCC80),
    Color.fromARGB(255, 113, 202, 243),
    Color.fromARGB(255, 243, 102, 92)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: NoteItem(
              color: colors[index],
            ),
          );
        });
  }
}
