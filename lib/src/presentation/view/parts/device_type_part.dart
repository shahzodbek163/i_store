import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_store/src/controller/blocs/device/device_type_bloc.dart';
import 'package:i_store/src/presentation/view/widget/main_textfield.dart';

import 'package:syncfusion_flutter_core/theme.dart';
import 'package:i_store/src/datagrid/data/employee_data.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:i_store/src/datagrid/model/employee_model.dart';

class DeviceTypePart extends StatefulWidget {
  const DeviceTypePart({super.key});

  @override
  State<DeviceTypePart> createState() => _DeviceTypePartState();
}

final deviceTypeBloc = DeviceTypeBloc();
final textEditingController = TextEditingController();

class _DeviceTypePartState extends State<DeviceTypePart> {
  final TextStyle headerTextStyle = const TextStyle(
    color: Color(0xFF1D2433),
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  @override
  Widget build(BuildContext context) {
    deviceTypeBloc.add(LoadDeviceTypeList());
    return Column(
      children: [
        MainTextfield(
          text: "Tovar sotiladigan qurilmalar",
          textField: (text) {
            textEditingController.text = text;
          },
          onAddTap: () {
            deviceTypeBloc.add(DeviceTypeNew(name: textEditingController.text));
            deviceTypeBloc.add(LoadDeviceTypeList());
            setState(() {});
          },
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
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
                    bloc: deviceTypeBloc,
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
                                    id: index + 1,
                                    nomi: state.deviceList[index].name,
                                    date: state.deviceList[index].date,
                                    user: ""),
                              )
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
                              child: Text("Qo’shilgan sana",
                                  style: headerTextStyle),
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
          ),
        ),
      ],
    );
  }
}
