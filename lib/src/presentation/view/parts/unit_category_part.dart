import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_store/src/controller/blocs/unit/unit_bloc.dart';
import 'package:i_store/src/datagrid/data/employee_data.dart';
import 'package:i_store/src/datagrid/model/employee_model.dart';
import 'package:i_store/src/presentation/view/widget/main_textfield.dart';
import 'package:i_store/src/utils/app_const.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class UnitCategoryPart extends StatefulWidget {
  const UnitCategoryPart({super.key});

  @override
  State<UnitCategoryPart> createState() => _UnitCategoryPartState();
}

class _UnitCategoryPartState extends State<UnitCategoryPart> {
  final unitTypeBloc = UnitBloc();
  final textEditingController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    unitTypeBloc.add(LoadUnitTypeList());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 180),
      child: Column(
        children: [
          MainTextfield(
            text: "Tovar sotiladigan qurilmalar",
            textField: (text) {
              textEditingController.text = text;
            },
            onAddTap: () {
              unitTypeBloc.add(UnitTypeNew(name: textEditingController.text));
              unitTypeBloc.add(LoadUnitTypeList());
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
                    child: BlocBuilder<UnitBloc, UnitState>(
                      bloc: unitTypeBloc,
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
                          source: EmployeeData(state is UnitLoadedState
                              ? List.generate(
                                  state.unitCategoryList.length,
                                  (index) => EmployeeModel(
                                    id: index + 1,
                                    nomi: state.unitCategoryList[index].name,
                                    date: state.unitCategoryList[index].date,
                                    user: state
                                        .unitCategoryList[index].user.username,
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
                                child:
                                    const Text("Nomi", style: headerTextStyle),
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
      ),
    );
  }
}
