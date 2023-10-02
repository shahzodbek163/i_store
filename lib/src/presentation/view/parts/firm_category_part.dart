import 'package:flutter/material.dart';
import 'package:i_store/src/controller/blocs/firm/firm_bloc.dart';
import 'package:i_store/src/datagrid/data/firm_datagrid.dart';
import 'package:i_store/src/datagrid/model/firm_datagrid_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_store/src/domen/request/firmnewreq/firm_new_req_model.dart';
import 'package:i_store/src/presentation/view/widget/text_fields_widget.dart';
import 'package:i_store/src/utils/app_const.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class FrimCategoryPart extends StatefulWidget {
  const FrimCategoryPart({super.key});

  @override
  State<FrimCategoryPart> createState() => _FrimCategoryPartState();
}

class _FrimCategoryPartState extends State<FrimCategoryPart> {
  final firmTypeBloc = FirmBloc();
  final address = TextEditingController();
  final email = TextEditingController();
  final name = TextEditingController();
  final tel = TextEditingController();
  final web = TextEditingController();

  @override
  void initState() {
    super.initState();
    firmTypeBloc.add(LoadFirmTypeList());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldsWidget(
          addressChange: (text) {
            address.text = text;
          },
          emailChange: (text) {
            email.text = text;
          },
          nameChange: (text) {
            name.text = text;
          },
          phoneChange: (text) {
            tel.text = text;
          },
          webChange: (text) {
            web.text = text;
          },
          onTap: () {
            firmTypeBloc.add(
              FirmTypeNew(
                frimNewReqModel: FirmNewReqModel(
                  address: address.text,
                  email: email.text,
                  name: name.text,
                  tel: tel.text,
                  web: web.text,
                ),
              ),
            );
            firmTypeBloc.add(LoadFirmTypeList());
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
                  child: BlocBuilder<FirmBloc, FirmState>(
                    bloc: firmTypeBloc,
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
                        source: FirmDataGrid(state is FirmLoadedState
                            ? List.generate(
                                state.firmCategoryList.length,
                                (index) => FrimDataGridModel(
                                    id: index + 1,
                                    nomi: state.firmCategoryList[index].name,
                                    address:
                                        state.firmCategoryList[index].address,
                                    telefon: state.firmCategoryList[index].tel,
                                    email: state.firmCategoryList[index].email,
                                    web: state.firmCategoryList[index].web,
                                    date: state.firmCategoryList[index].date,
                                    user: ""),
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
                            columnName: "address",
                            label: Container(
                              alignment: Alignment.centerLeft,
                              child:
                                  const Text("Address", style: headerTextStyle),
                            ),
                          ),
                          GridColumn(
                            columnName: "telefon",
                            label: Container(
                              alignment: Alignment.centerLeft,
                              child:
                                  const Text("Telefon", style: headerTextStyle),
                            ),
                          ),
                          GridColumn(
                            columnName: "date",
                            label: Container(
                              alignment: Alignment.centerLeft,
                              child: const Text("Date", style: headerTextStyle),
                            ),
                          ),
                          GridColumn(
                            columnName: "email",
                            label: Container(
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              child:
                                  const Text("Email", style: headerTextStyle),
                            ),
                          ),
                          GridColumn(
                            columnName: "web",
                            label: Container(
                              alignment: Alignment.centerLeft,
                              child: const Text("Web", style: headerTextStyle),
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
