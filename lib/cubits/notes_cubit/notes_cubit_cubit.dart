import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_application/consts.dart';
import 'package:notes_application/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_application/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  fetchNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notes: notes));
    } catch (e) {
      AddNoteFailure(e.toString());
      emit(NotesFailure(errorMessage: e.toString()));
    }
  }
}
