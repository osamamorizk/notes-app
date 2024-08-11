import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_application/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_application/models/note_model.dart';
import 'package:notes_application/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final colors = const [
    Color(0xffFFCC80),
    Color.fromARGB(255, 113, 202, 243),
    Color.fromARGB(255, 243, 102, 92),
    Color(0xffFFCC80),
    Color.fromARGB(255, 113, 202, 243),
    Color.fromARGB(255, 243, 102, 92),
    Color(0xffFFCC80),
    Color.fromARGB(255, 113, 202, 243),
    Color.fromARGB(255, 243, 102, 92)
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: BlocBuilder<NotesCubit, NotesCubitState>(
        builder: (context, state) {
          List<NoteModel> notes =
              BlocProvider.of<NotesCubit>(context).notes ?? [];
          return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: NoteItem(
                    note: notes[index],
                    color: Colors.yellow,
                  ),
                );
              });
        },
      ),
    );
  }
}
