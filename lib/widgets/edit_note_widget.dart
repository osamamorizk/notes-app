import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_application/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_application/models/note_model.dart';
import 'package:notes_application/widgets/custom_appbar.dart';
import 'package:notes_application/widgets/custom_text_field.dart';

class EditNoteWidget extends StatefulWidget {
  const EditNoteWidget({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteWidget> createState() => _EditNoteWidgetState();
}

class _EditNoteWidgetState extends State<EditNoteWidget> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.pop(context);
            },
            title: 'Notes Edit',
            icon: Icons.edit,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.content,
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
