import 'package:flutter/material.dart';
import 'package:notes_application/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            // fontWeight: FontWeight.bold,
          ),
        ),
        const CustomSearchIcon(
          icon: Icons.search,
        )
      ],
    );
  }
}
