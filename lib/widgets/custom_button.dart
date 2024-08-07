import 'package:flutter/material.dart';
import 'package:notes_application/consts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: KprimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
