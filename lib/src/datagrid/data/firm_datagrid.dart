import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:i_store/src/datagrid/model/firm_datagrid_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class FirmDataGrid extends DataGridSource {
  FirmDataGrid(List<FrimDataGridModel> employees) {
    _employees = employees
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'id', value: e.id),
              DataGridCell<String>(columnName: 'name', value: e.nomi),
              DataGridCell<String>(columnName: 'name', value: e.address),
              DataGridCell<String>(columnName: 'name', value: e.telefon),
              DataGridCell<String>(columnName: 'name', value: e.email),
              DataGridCell<String>(columnName: 'user', value: e.user),
              DataGridCell<String>(columnName: 'name', value: e.web),
              DataGridCell<String>(columnName: 'date', value: e.date),
            ]))
        .toList();
  }
  int index = 0;
  List<DataGridRow> _employees = [];
  @override
  List<DataGridRow> get rows => _employees;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    index++;
    return DataGridRowAdapter(
        cells: row.getCells().map((e) {
      return Container(
        padding: e.columnName == "id" ? const EdgeInsets.only(left: 8) : null,
        color:
            index % 2 == 1 ? const Color(0xFFFFFFFF) : const Color(0xFFF8F9FC),
        alignment: Alignment.centerLeft,
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}
