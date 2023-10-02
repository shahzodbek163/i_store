import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_store/src/presentation/view/widget/text_field_widget.dart';

class TextFieldsWidget extends StatefulWidget {
  final Function()? onTap;
  final Function(String value)? nameChange;
  final Function(String value)? phoneChange;
  final Function(String value)? addressChange;
  final Function(String value)? emailChange;
  final Function(String value)? webChange;
  const TextFieldsWidget(
      {super.key,
      this.onTap,
      this.nameChange,
      this.phoneChange,
      this.addressChange,
      this.emailChange,
      this.webChange});

  @override
  State<TextFieldsWidget> createState() => _TextFieldsWidgetState();
}

class _TextFieldsWidgetState extends State<TextFieldsWidget> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: isTap ? 90 : 28,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            children: [
              const Text('Tovar firmalari'),
              const SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  isTap = !isTap;
                  setState(() {});
                },
                child: Image.asset(
                  isTap ? "stop.png" : "plus.png",
                  width: 16 / 1.3,
                  height: 16 / 1.3,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16 / 1.5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                  child: TextFieldWidget(
                text: "Nomi",
                onChange: (text) {
                  widget.nameChange?.call(text);
                },
              )),
              Expanded(
                  child: TextFieldWidget(
                text: "Address",
                onChange: (text) {
                  widget.addressChange?.call(text);
                },
              )),
              Expanded(
                  child: TextFieldWidget(
                text: "Telefon",
                onChange: (text) {
                  widget.phoneChange?.call(text);
                },
              )),
              Expanded(
                  child: TextFieldWidget(
                text: "Email",
                onChange: (text) {
                  widget.emailChange?.call(text);
                },
              )),
              Expanded(
                  child: TextFieldWidget(
                onChange: (text) {
                  widget.webChange?.call(text);
                },
                text: "Web",
              )),
              InkWell(
                onTap: widget.onTap,
                child: Container(
                  width: 149 / 1.5,
                  height: 44 / 1.4,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF4CAF50),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    "Qo'shish",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16 / 1.4,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
