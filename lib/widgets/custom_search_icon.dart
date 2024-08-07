import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16)),
      height: 50,
      width: 50,
      child: Center(
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.white,
              size: 30,
            )),
      ),
    );
  }
}
