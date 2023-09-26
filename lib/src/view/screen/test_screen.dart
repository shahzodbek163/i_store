import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:i_store/src/view/widget/custom_table_row.dart';
>>>>>>> 0e73d0759e4af012f96d36a936135d0c079a16e3

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: Center(
        child: Row(
          children: [
            Container(
              child: const Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)))),
                    ),
                  ),
                ],
              ),
            ),
            Container()
          ],
        ),
=======
      body: CustomTableRow(
        tapsList: const ["Salom", "Hayr", "Nima gap"],
        onChanged: (value) {},
>>>>>>> 0e73d0759e4af012f96d36a936135d0c079a16e3
      ),
    );
  }
}
