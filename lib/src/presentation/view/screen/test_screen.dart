import 'package:flutter/material.dart';
import 'package:i_store/src/presentation/view/widget/text_fields_widget.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TextFieldsWidget(),
    );
  }
}
