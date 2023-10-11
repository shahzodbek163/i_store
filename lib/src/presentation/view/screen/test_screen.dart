import 'package:flutter/material.dart';
import 'package:i_store/src/domen/response/stuffmodel/stuff_get_all_res.dart';
import 'package:i_store/src/presentation/view/widget/drop_down_widget.dart';
import 'package:i_store/src/presentation/view/widget/text_fields_widget.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropDownWidget(
        searchModelList: [
          StuffGetAllResModel(name: "name", id: 1, date: ""),
          StuffGetAllResModel(name: "mane", id: 1, date: ""),
        ],
        indexChange: (index) {
          print(index);
        },
      ),
    );
  }
}
