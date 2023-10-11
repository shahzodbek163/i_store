import 'package:edu_search_table_drop_down/controllers/models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_store/src/controller/blocs/stuff/stuff_controller_bloc_bloc.dart';
import 'package:i_store/src/domen/response/stuffmodel/stuff_get_all_res.dart';
import 'package:i_store/src/presentation/view/widget/drop_down_widget.dart';
import 'package:i_store/src/presentation/view/widget/text_field_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFieldsEmploye extends StatefulWidget {
  final Function()? onTap;
  final Function(String value)? nameChange;
  final Function(int value)? stuffId;
  final Function(String value)? lastNameChange;
  final Function(String value)? sharfChange;
  final Function(String value)? passpordChange;
  final Function(String value)? mainNumChange;
  final Function(String value)? lastNumChange;
  final Function(String value)? lavozimChange;
  final Function(String value)? startDateChange;
  final Function(String value)? endDateChange;
  final Function(String value)? usernameChange;
  final Function(String value)? passwordChange;
  final Function(String value)? birthday;
  const TextFieldsEmploye({
    super.key,
    this.onTap,
    this.nameChange,
    this.stuffId,
    this.lastNameChange,
    this.sharfChange,
    this.passwordChange,
    this.passpordChange,
    this.mainNumChange,
    this.lastNumChange,
    this.lavozimChange,
    this.startDateChange,
    this.endDateChange,
    this.usernameChange,
    this.birthday,
  });

  @override
  State<TextFieldsEmploye> createState() => _TextFieldsEmployeState();
}

class _TextFieldsEmployeState extends State<TextFieldsEmploye> {
  bool isTap = false;
  final bloc = StuffControllerBloc();
  @override
  void initState() {
    super.initState();
    bloc.add(LoadStuffConstrollerEvent());
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: isTap ? 270 : 28,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text('Hodimlar'),
              const SizedBox(
                width: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: InkWell(
                  onTap: () {
                    isTap = !isTap;
                    setState(() {});
                  },
                  child: Image.asset(
                    isTap ? "stop.png" : "plus.png",
                    width: 16 / 1.3,
                    height: 16 / 1.3,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16 / 1.5,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 300 / 1.5,
                    height: 57,
                    child: TextFieldWidget(
                      text: "Ismi",
                      onChange: (text) {
                        widget.nameChange?.call(text);
                      },
                    ),
                  ),
                  SizedBox(
                      width: 300 / 1.5,
                      height: 57,
                      child: TextFieldWidget(
                        text: "Familyasi",
                        onChange: (text) {
                          widget.lavozimChange?.call(text);
                        },
                      )),
                  SizedBox(
                      width: 300 / 1.5,
                      height: 57,
                      child: TextFieldWidget(
                        text: "Paspord",
                        onChange: (text) {
                          widget.passpordChange?.call(text);
                        },
                      )),
                  SizedBox(
                      width: 300 / 1.5,
                      height: 57,
                      child: TextFieldWidget(
                        onChange: (text) {
                          widget.mainNumChange?.call(text);
                        },
                        text: "Asosiy telefon",
                      )),
                ],
              ),
              const SizedBox(
                height: 16 / 1.5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                      width: 300 / 1.5,
                      height: 57,
                      child: TextFieldWidget(
                        text: "Qoshimcha telefon",
                        isNoneRequared: true,
                        onChange: (text) {
                          widget.lastNumChange?.call(text);
                        },
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Lavozimi *",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20 / 1.5,
                              color: Color(0xFF344054),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      BlocBuilder<StuffControllerBloc, StuffControllerState>(
                        bloc: bloc,
                        builder: (context, state) {
                          return state is StuffControllerLoadedState
                              ? SizedBox(
                                  width: 180,
                                  height: 33,
                                  child: DropDownWidget(
                                    searchModelList: state.stuffCategoryList,
                                    indexChange: (index) {
                                      widget.stuffId?.call(index);
                                    },
                                  ),
                                )
                              : const CircularProgressIndicator();
                        },
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                      width: 300 / 1.5,
                      height: 57,
                      child: TextFieldWidget(
                        text: "Tug'ulgan kuni",
                        onChange: (text) {
                          widget.startDateChange?.call(text);
                        },
                      )),
                  SizedBox(
                      width: 300 / 1.5,
                      height: 57,
                      child: TextFieldWidget(
                        text: "Ish boshlagan sana",
                        onChange: (text) {
                          widget.startDateChange?.call(text);
                        },
                      )),
                  SizedBox(
                      width: 300 / 1.5,
                      height: 57,
                      child: TextFieldWidget(
                        text: "Ish yakunlash sanasi",
                        isNoneRequared: true,
                        onChange: (text) {
                          widget.endDateChange?.call(text);
                        },
                      )),
                ],
              ),
              const SizedBox(
                height: 16 / 1.5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                      width: 300 / 1.5,
                      height: 57,
                      child: TextFieldWidget(
                        onChange: (text) {
                          widget.usernameChange?.call(text);
                        },
                        text: "Username",
                      )),
                  SizedBox(
                      width: 300 / 1.5,
                      height: 57,
                      child: TextFieldWidget(
                        onChange: (text) {
                          widget.passwordChange?.call(text);
                        },
                        text: "Password",
                      )),
                  InkWell(
                    onTap: widget.onTap,
                    child: Container(
                      width: 149 / 1.5,
                      height: 44 / 1.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF4CAF50),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "Qo'shish",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16 / 1.4,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
