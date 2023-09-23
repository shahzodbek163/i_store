import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget {
  final String title;
  final String imagePath;
  const TextIcon({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF404E67),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          imagePath,
          width: 15,
        )
      ],
    );
  }
}
