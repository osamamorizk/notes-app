import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.only(left: 16, top: 16, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter',
              style: TextStyle(
                fontSize: 27,
                color: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                'Study flutter every day to be a good developer.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(.7),
                ),
              ),
            ),
            trailing: IconButton(
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 26,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, top: 10),
            child: Text(
              '8 Aug, 2024',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black.withOpacity(.6),
              ),
            ),
          )
        ],
      ),
    );
  }
}
