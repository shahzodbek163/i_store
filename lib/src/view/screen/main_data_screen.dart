import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_store/src/view/widget/icon_text_widget.dart';
import 'package:i_store/src/view/widget/main_textfield.dart';
import 'package:i_store/src/view/widget/tables/table.dart';

class MainDataScreen extends StatelessWidget {
  const MainDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF6F7FB),
        body: Column(
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
            Expanded(
              child: ListView(
                children: [
                  const Padding(
                      padding: EdgeInsets.only(left: 62, top: 22),
                      child:
                          MainTextfield(text: "Tovar sotiladigan qurilmalar")),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16, left: 62, right: 200),
                    child: CustomTable(tables: [
                      TableModel(
                        name: "Telefon s23 Ultra",
                        user: "sammsung@mail.ru",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                    ]),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 62, top: 30),
                      child: MainTextfield(text: "Tovar kategoriyalari")),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16, left: 62, right: 200),
                    child: CustomTable(tables: [
                      TableModel(
                        name: "Telefon s23 Ultra",
                        user: "sammsung@mail.ru",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                    ]),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 62, top: 30),
                      child: MainTextfield(text: "Tovar kategoriyalari")),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16, left: 62, right: 200),
                    child: CustomTable(tables: [
                      TableModel(
                        name: "Telefon s23 Ultra",
                        user: "sammsung@mail.ru",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                      TableModel(
                        name: "name",
                        user: "user",
                        addedDate: DateTime.now(),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
