import 'package:flutter/material.dart';
import 'package:notes_application/consts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: BorderEdit(),
        border: BorderEdit(),
        focusedBorder: BorderEdit(KprimaryColor),
      ),
    );
  }

  OutlineInputBorder BorderEdit([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
