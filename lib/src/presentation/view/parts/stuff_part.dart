import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_store/src/controller/blocs/stuff/stuff_controller_bloc_bloc.dart';
import 'package:i_store/src/datagrid/data/employee_data.dart';
import 'package:i_store/src/datagrid/model/employee_model.dart';
import 'package:i_store/src/domen/request/onlynamereq/only_name_req_model.dart';
import 'package:i_store/src/presentation/view/widget/main_textfield.dart';
import 'package:i_store/src/utils/app_const.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class StuffPart extends StatefulWidget {
  const StuffPart({super.key});

  @override
  State<StuffPart> createState() => _StuffPartState();
}

class _StuffPartState extends State<StuffPart> {
  final stuffTypeBloc = StuffControllerBloc();
  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    stuffTypeBloc.add(LoadStuffConstrollerEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainTextfield(
          text: "Lavozimlar",
          textField: (text) {
            textEditingController.text = text;
          },
          onAddTap: () {
            stuffTypeBloc.add(StuffControllerNewEvent(
                onlyNameReqModel: OnlyNameReqModel(
              name: textEditingController.text,
            )));
            stuffTypeBloc.add(LoadStuffConstrollerEvent());
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
                  child: BlocBuilder<StuffControllerBloc, StuffControllerState>(
                    bloc: stuffTypeBloc,
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
                        source: EmployeeData(state is StuffControllerLoadedState
                            ? List.generate(
                                state.stuffCategoryList.length,
                                (index) => EmployeeModel(
                                  id: index + 1,
                                  nomi: state.stuffCategoryList[index].name,
                                  date: state.stuffCategoryList[index].date,
                                  user: "",
                                ),
                              )
                            : []),
                        columns: [
                          GridColumn(
                            columnName: "id",
                            label: Container(
                              padding: const EdgeInsets.only(left: 8),
                              alignment: Alignment.centerLeft,
                              child: const Text("№", style: headerTextStyle),
                            ),
                          ),
                          GridColumn(
                            columnName: "name",
                            label: Container(
                              alignment: Alignment.centerLeft,
                              child: const Text("Nomi", style: headerTextStyle),
                            ),
                          ),
                          GridColumn(
                            columnName: "date",
                            label: Container(
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              child: const Text("Qo’shilgan sana",
                                  style: headerTextStyle),
                            ),
                          ),
                          GridColumn(
                            columnName: "user",
                            label: Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
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
