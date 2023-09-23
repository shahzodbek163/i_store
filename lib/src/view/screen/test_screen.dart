import 'package:flutter/material.dart';
import 'package:i_store/src/view/widget/main_textfield.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainTextfield(text: "Salom harromi"),
    );
  }
}
