import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_store/src/view/widget/icon_text_widget.dart';

class MainDataScreen extends StatelessWidget {
  MainDataScreen({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: const Color(0xFF404E67),
        width: 350,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    size: 34,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            IconTextWidget(
                text: "Asosiy ma’lumotlar",
                icon: Image.asset("dataBaseOne.png"))
          ],
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            scaffoldKey.currentState!.openDrawer();
          },
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
