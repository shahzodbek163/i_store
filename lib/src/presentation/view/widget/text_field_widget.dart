import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final Function(String text)? onChange;

  const TextFieldWidget({super.key, this.onChange, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF344054),
                ),
              ),
              const Text(
                " *",
                style: TextStyle(
                  color: Color(0xFFFF0000),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            height: 44 / 1.4,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  blurRadius: 2,
                  color: Color(0xff1018280d),
                ),
              ],
              color: Colors.white,
              border: Border.all(
                color: const Color(0xFFD0D5DD),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextField(
                onChanged: (value) {
                  onChange?.call(value);
                },
                style: const TextStyle(
                  fontSize: 16 / 1.2,
                ),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
