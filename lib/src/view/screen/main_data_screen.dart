import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_store/src/model/table_model.dart';
import 'package:i_store/src/view/widget/icon_text_widget.dart';
import 'package:i_store/src/view/widget/main_textfield.dart';
import 'package:i_store/src/view/widget/tables/table.dart';

class MainDataScreen extends StatelessWidget {
  const MainDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF6F7FB),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 31,
                    horizontal: 62,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 140),
                        child: Column(
                          children: [
                            const Row(
                              children: [
                                Spacer(),
                                Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  size: 16 / 1.5,
                                  color: Color(0xFF404E67),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 16 / 1.5,
                                  color: Color(0xFF404E67),
                                ),
                              ],
                            ),
                            MainTextfield(text: "Tovar sotiladigan qurilmalar"),
                            CustomTable(tables: tableSoldOutList),
                          ],
                        ),
                      ),
                      const SizedBox(height: 60),
                      Padding(
                        padding: const EdgeInsets.only(right: 140),
                        child: Column(children: [
                          const Row(
                            children: [
                              Spacer(),
                              Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 16 / 1.5,
                                color: Color(0xFF404E67),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 16 / 1.5,
                                color: Color(0xFF404E67),
                              ),
                            ],
                          ),
                          MainTextfield(text: "Tovar sotiladigan qurilmalar"),
                          CustomTable(tables: tableCategoryList),
                        ]),
                      ),
                      const SizedBox(height: 60),
                      Column(children: [
                        MainTextfield(text: "Tovar sotiladigan qurilmalar"),
                        CustomTable(tables: tableCategoryList),
                      ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
