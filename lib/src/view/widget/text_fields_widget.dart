import 'package:edu_badge_textfield/edu_badge_textfield.dart';
import 'package:flutter/material.dart';

class TextFieldsWidget extends StatelessWidget {
  final String text;
  const TextFieldsWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EduBadgeText(
            text: text,
            isRequired: true,
          ),
          const SizedBox(height: 6),
          const EduTextfield(
            height: 44 / 1.4,
            width: 300 / 1.4,
          )
        ],
      ),
    );
  }
}
