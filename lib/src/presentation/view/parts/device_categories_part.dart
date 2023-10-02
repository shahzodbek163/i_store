import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_store/src/controller/blocs/devicecategorytype/device_category_type_bloc.dart';
import 'package:i_store/src/domen/request/categorynewreq/category_req_model.dart';
import 'package:i_store/src/presentation/view/widget/main_textfield.dart';
import 'package:i_store/src/utils/app_const.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:i_store/src/datagrid/data/employee_data.dart';
import 'package:i_store/src/datagrid/model/employee_model.dart';

final deviceCategoryBloc = DeviceCategoryTypeBloc();
final textEditingController = TextEditingController();

class DeviceCategoriesPart extends StatelessWidget {
  const DeviceCategoriesPart({super.key});

  @override
  Widget build(BuildContext context) {
    deviceCategoryBloc.add(LoadDeviceCategoryTypeList());
    return Padding(
      padding: const EdgeInsets.only(right: 180),
      child: Column(
        children: [
          MainTextfield(
            text: "Tovar turlari",
            textField: (text) {
              textEditingController.text = text;
            },
            onAddTap: () {
              deviceCategoryBloc.add(
                DeviceCategoryTypeNew(
                  reqModel: CategoryNewReqModel(
                    name: textEditingController.text,
                    productCategoryTypes: [],
                  ),
                ),
              );
              deviceCategoryBloc.add(LoadDeviceCategoryTypeList());
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Container(
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
                      child: BlocBuilder<DeviceCategoryTypeBloc,
                          DeviceCategoryTypeState>(
                        bloc: deviceCategoryBloc,
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
                            source: EmployeeData(
                                state is DeviceCategoryTypeListLoadedState
                                    ? List.generate(
                                        state.deviceCategoryList.length,
                                        (index) => EmployeeModel(
                                            id: index + 1,
                                            nomi: state
                                                .deviceCategoryList[index].name,
                                            date: state
                                                .deviceCategoryList[index].date,
                                            user: "user"))
                                    : []),
                            columns: [
                              GridColumn(
                                columnName: "id",
                                label: Container(
                                  padding: const EdgeInsets.only(left: 8),
                                  alignment: Alignment.centerLeft,
                                  child:
                                      const Text("№", style: headerTextStyle),
                                ),
                              ),
                              GridColumn(
                                columnName: "name",
                                label: Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text("Nomi",
                                      style: headerTextStyle),
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
          ),
        ],
      ),
    );
  }
}
