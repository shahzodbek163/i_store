import 'package:flutter/material.dart';
import 'package:i_store/src/view/widget/custom_table_row.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomTableRow(
        tapsList: const ["Salom", "Hayr", "Nima gap"],
        onChanged: (value) {},
      ),
    );
  }
}
