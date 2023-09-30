import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_store/src/controller/blocs/device/device_type_bloc.dart';
import 'package:i_store/src/datagrid/model/employee_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:i_store/src/datagrid/data/employee_data.dart';

class CustomTable extends StatefulWidget {
  const CustomTable({
    super.key,
  });

  @override
  State<CustomTable> createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {
  List<EmployeeModel> employees = [];
  late EmployeeData employeeDataSource;

  @override
  void initState() {
    super.initState();
    context.read<DeviceTypeBloc>().add(LoadDeviceTypeList());
  }

  final TextStyle headerTextStyle = const TextStyle(
    color: Color(0xFF1D2433),
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SfDataGridTheme(
            data: SfDataGridThemeData(
              gridLineStrokeWidth: 0,
              headerColor: const Color(0xFFF1F3F9),
              frozenPaneLineWidth: 0,
              gridLineColor: Colors.transparent,
            ),
            child: BlocBuilder(
              bloc: context.read<DeviceTypeBloc>(),
              builder: (context, state) {
                return SfDataGrid(
                  selectionMode: SelectionMode.single,
                  columnWidthMode: ColumnWidthMode.fill,
                  allowEditing: true,
                  columnResizeMode: ColumnResizeMode.onResize,
                  showHorizontalScrollbar: true,
                  rowsPerPage: 10,
                  headerRowHeight: 35,
                  rowHeight: 35,
                  source: EmployeeData(state is DeviceTypeListloadedState
                      ? List.generate(
                          state.deviceList.length,
                          (index) => EmployeeModel(
                              id: state.deviceList[index].id,
                              nomi: state.deviceList[index].name,
                              date: state.deviceList[index].date,
                              user: ""))
                      : []),
                  columns: [
                    GridColumn(
                      columnName: "id",
                      label: Container(
                        padding: const EdgeInsets.only(left: 8),
                        alignment: Alignment.centerLeft,
                        child: Text("№", style: headerTextStyle),
                      ),
                    ),
                    GridColumn(
                      columnName: "name",
                      label: Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Nomi", style: headerTextStyle),
                      ),
                    ),
                    GridColumn(
                      columnName: "date",
                      label: Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: Text("Qo’shilgan sana", style: headerTextStyle),
                      ),
                    ),
                    GridColumn(
                      columnName: "user",
                      label: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "User",
                          style: headerTextStyle,
                        ),
                      ),
                    ),
                  ],
                );
              },
            )),
      ),
    );
  }
}
