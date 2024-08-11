import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});
  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: isSelected
          ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35,
              child: CircleAvatar(
                backgroundColor: Colors.lightGreen,
                radius: 30,
              ),
            )
          : CircleAvatar(
              backgroundColor: color,
              radius: 30,
            ),
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
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
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isSelected: currentIndex == index,
              ),
            );
          }),
    );
  }
}
