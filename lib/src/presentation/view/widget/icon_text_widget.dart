import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class IconTextWidget extends StatefulWidget {
  String text;
  Widget icon;
  IconTextWidget({super.key, required this.text, required this.icon});

  @override
  State<IconTextWidget> createState() => _IconTextWidgetState();
}

class _IconTextWidgetState extends State<IconTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.icon,
        const SizedBox(
          width: 10,
        ),
        Text(
          widget.text,
          style: GoogleFonts.inter(color: Colors.white, fontSize: 18 / 1.5),
        ),
      ],
    );
  }
}
