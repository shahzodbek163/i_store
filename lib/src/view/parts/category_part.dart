import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_store/src/controller/blocs/category/category_bloc.dart';
import 'package:i_store/src/datagrid/model/employee_model.dart';
import 'package:i_store/src/utils/app_const.dart';
import 'package:i_store/src/view/widget/main_textfield.dart';
import 'package:i_store/src/datagrid/data/employee_data.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class DeviceCategoryPart extends StatefulWidget {
  const DeviceCategoryPart({super.key});

  @override
  State<DeviceCategoryPart> createState() => _DeviceCategoryPartState();
}

final deviceCategoryBloc = CategoryBloc();
final textEditingController = TextEditingController();

class _DeviceCategoryPartState extends State<DeviceCategoryPart> {
  final bloc = CategoryBloc();
  @override
  Widget build(BuildContext context) {
    bloc.add(LoadCategoryList());
    return Column(
      children: [
        MainTextfield(
          text: "Tovar kategoriyalari",
          textField: (text) {
            textEditingController.text = text;
          },
          onAddTap: () {},
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
                    child: BlocBuilder<CategoryBloc, CategoryState>(
                      bloc: bloc,
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
                          source: EmployeeData(state is CategoryLoadedState
                              ? List.generate(
                                  state.categoryModel.length,
                                  (index) => EmployeeModel(
                                      id: index + 1,
                                      nomi: state.categoryModel[index].name,
                                      date: state.categoryModel[index].date,
                                      user: "user"))
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
        ),
      ],
    );
  }
}
