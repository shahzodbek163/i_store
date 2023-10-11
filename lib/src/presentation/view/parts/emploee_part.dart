import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_store/src/controller/blocs/employee/employee_bloc.dart';
import 'package:i_store/src/controller/blocs/firm/firm_bloc.dart';
import 'package:i_store/src/datagrid/data/firm_datagrid.dart';
import 'package:i_store/src/datagrid/model/firm_datagrid_model.dart';
import 'package:i_store/src/domen/request/auth/auth_req_model.dart';
import 'package:i_store/src/domen/request/facenew/face_new_req_model.dart';
import 'package:i_store/src/domen/request/newemployee/new_employee_req_model.dart';
import 'package:i_store/src/utils/app_const.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:i_store/src/presentation/view/widget/text_fieds_employe.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class EmploeePart extends StatefulWidget {
  const EmploeePart({super.key});

  @override
  State<EmploeePart> createState() => _EmploeePartState();
}

class _EmploeePartState extends State<EmploeePart> {
  final name = TextEditingController();
  final lastName = TextEditingController();
  final sharf = TextEditingController();
  final birthday = TextEditingController();
  final passport = TextEditingController();
  final mainNum = TextEditingController();
  final lastNum = TextEditingController();
  final lavozim = TextEditingController();
  final startDate = TextEditingController();
  final endDate = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  int indexs = 0;
  final emploeeBloc = EmployeeBloc();
  @override
  void initState() {
    super.initState();
    emploeeBloc.add(LoadEmployeeTypeList());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldsEmploye(
          nameChange: (text) {
            name.text = text;
          },
          lastNameChange: (text) {
            lastName.text = text;
          },
          birthday: (text) {
            birthday.text = text;
          },
          sharfChange: (text) {
            sharf.text = text;
          },
          passpordChange: (text) {
            passport.text = text;
          },
          mainNumChange: (text) {
            mainNum.text = text;
          },
          lastNumChange: (text) {
            lastNum.text = text;
          },
          lavozimChange: (text) {
            lavozim.text = text;
          },
          startDateChange: (text) {
            startDate.text = text;
          },
          endDateChange: (text) {
            endDate.text = text;
          },
          usernameChange: (text) {
            userName.text = text;
          },
          passwordChange: (text) {
            password.text = text;
          },
          stuffId: (index) {
            indexs = index;
            print(indexs);
          },
          onTap: () {
            emploeeBloc.add(EmployeeTypeNew(
                newEmploeeModel: NewEmployeeModel(
              auth: AuthReqModel(
                  password: password.text, username: userName.text),
              endDate: endDate.text,
              face: FaceNewReqModel(
                birthday: birthday.text,
                firstname: name.text,
                lastname: lastName.text,
                middlename: sharf.text,
                tel1: mainNum.text,
                tel2: lastNum.text,
              ),
              startDate: startDate.text,
              stuffId: indexs,
            )));
            emploeeBloc.add(LoadEmployeeTypeList());
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
                  child: BlocBuilder<EmployeeBloc, EmployeeState>(
                    bloc: emploeeBloc,
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
                        source: FirmDataGrid(state is EmployeeLoadedState
                            ? List.generate(
                                state.employeeCategoryList.length,
                                (index) => FrimDataGridModel(
                                  id: index + 1,
                                  nomi: state.employeeCategoryList[index].user
                                      .username,
                                  address: state.employeeCategoryList[index]
                                      .face.firstname,
                                  telefon: state
                                      .employeeCategoryList[index].face.tel1,
                                  email: state.employeeCategoryList[index].user
                                      .username,
                                  web: "fintechreality@gmail.com",
                                  date: state.employeeCategoryList[index].date,
                                  user: state.employeeCategoryList[index].user
                                      .username,
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
                            columnName: "email",
                            label: Container(
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              child:
                                  const Text("Email", style: headerTextStyle),
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
                          GridColumn(
                            columnName: "web",
                            label: Container(
                              alignment: Alignment.centerLeft,
                              child: const Text("Web", style: headerTextStyle),
                            ),
                          ),
                          GridColumn(
                            columnName: "date",
                            label: Container(
                              alignment: Alignment.centerLeft,
                              child: const Text("Date", style: headerTextStyle),
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
