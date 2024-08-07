import 'package:flutter/material.dart';
import 'package:notes_application/widgets/custom_appbar.dart';
import 'package:notes_application/widgets/custom_text_field.dart';

class EditNoteWidget extends StatelessWidget {
  const EditNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomAppBar(
            title: 'Notes Edit',
            icon: Icons.check,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(hint: 'title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'content',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
