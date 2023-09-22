import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_store/src/view/widget/icon_text_widget.dart';

class MainDataScreen extends StatelessWidget {
  const MainDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "iStore",
                    style: GoogleFonts.inter(
                        fontSize: 28, color: const Color(0xFF49CE34)),
                  ),
                  const Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                children: [
                  IconTextWidget(
                      text: "Asosiy ma’lumotlar",
                      icon: Image.asset(
                        "dataBaseOne.png",
                        height: 23,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  IconTextWidget(
                      text: "Sotuv",
                      icon: Image.asset(
                        "datas.png",
                        height: 23,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  IconTextWidget(
                      text: "Maxsulot qabuli",
                      icon: Image.asset(
                        "recive.png",
                        height: 23,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  IconTextWidget(
                      text: "Hisobotlar",
                      icon: Image.asset(
                        "xsbt.png",
                        height: 23,
                      )),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
