import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_store/src/controller/blocs/device/device_type_bloc.dart';
import 'package:i_store/src/model/table_model.dart';
import 'package:i_store/src/view/widget/custom_table_row.dart';
import 'package:i_store/src/view/widget/icon_text_widget.dart';
import 'package:i_store/src/view/widget/main_textfield.dart';
import 'package:i_store/src/view/widget/tables/table.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainDataScreen extends StatefulWidget {
  const MainDataScreen({super.key});

  @override
  State<MainDataScreen> createState() => _MainDataScreenState();
}

class _MainDataScreenState extends State<MainDataScreen> {
  final deviceTypeBloc = DeviceTypeBloc();
  @override
  void initState() {
    super.initState();
    deviceTypeBloc.add(LoadDeviceTypeList());
  }

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();
    return Scaffold(
        backgroundColor: const Color(0xFFF6F7FB),
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Container(
                height: 77 / 1.5,
                decoration: const BoxDecoration(color: Color(0xFF404E67)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 27 / 1.5,
                    ),
                    Text(
                      "iStore",
                      style: GoogleFonts.inter(
                          color: const Color(0xFF49CE34), fontSize: 36 / 1.5),
                    ),
                    const SizedBox(
                      width: 40 / 1.5,
                    ),
                    IconTextWidget(
                        text: "Asosiy ma’lumotlar",
                        icon: Image.asset(
                          "assets/dataBaseOne.png",
                          height: 23 / 1.5,
                        )),
                    const SizedBox(
                      width: 40 / 1.5,
                    ),
                    IconTextWidget(
                        text: "Sotuv",
                        icon: Image.asset(
                          "assets/datas.png",
                          height: 23 / 1.5,
                        )),
                    const SizedBox(
                      width: 40 / 1.5,
                    ),
                    IconTextWidget(
                        text: "Maxsulot qabuli",
                        icon: Image.asset(
                          "recive.png",
                          height: 23 / 1.5,
                        )),
                    const SizedBox(
                      width: 40 / 1.5,
                    ),
                    IconTextWidget(
                        text: "Hisobotlar",
                        icon: Image.asset(
                          "xsbt.png",
                          height: 23 / 1.5,
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 31 / 1.5,
                  right: 200,
                  left: 62,
                ),
                child: Column(
                  children: [
                    CustomTableRow(
                      tapsList: const [
                        "Tovar sotiladigan qurilmalar",
                        "Tovar kategoriyalar",
                        "Tovar turlari",
                        "Kategoriya turlari",
                        "Sotuv miqdor turlari",
                        "Tovar firmalari",
                      ],
                      onChanged: (index) {},
                    ),
                    const SizedBox(height: 40),
                    MainTextfield(
                      text: "Tovar sotiladigan qurilmalar",
                      textField: (text) {
                        textEditingController.text = text;
                      },
                      onAddTap: () {
                        deviceTypeBloc.add(
                            DeviceTypeNew(name: textEditingController.text));
                        deviceTypeBloc.add(LoadDeviceTypeList());
                        print(textEditingController.text);
                      },
                    ),
                    BlocBuilder<DeviceTypeBloc, DeviceTypeState>(
                      bloc: deviceTypeBloc,
                      builder: (context, state) {
                        return CustomTable(
                          tables: state is DeviceTypeListloadedState
                              ? List.generate(
                                  state.deviceList.length,
                                  (index) => TableModel(
                                      name: state.deviceList[index].name,
                                      addedDate: state.deviceList[index].date,
                                      user: "User",
                                      id: state.deviceList[index].id),
                                )
                              : [],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
