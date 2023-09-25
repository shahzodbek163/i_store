import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_store/src/view/widget/text_fields_widget.dart';

// ignore: must_be_immutable
class MainTextfield extends StatefulWidget {
  final String text;
  bool isTextField;
  MainTextfield({super.key, required this.text, this.isTextField = false});

  @override
  State<MainTextfield> createState() => _MainTextfieldState();
}

class _MainTextfieldState extends State<MainTextfield> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: isTap
          ? widget.isTextField
              ? 94
              : 78
          : 28,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      widget.text,
                      style: GoogleFonts.inter(
                        fontSize: 20 / 1.3,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
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
              ],
            ),
            const SizedBox(
              height: 16 / 1.5,
            ),
            widget.isTextField
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const TextFieldsWidget(text: "Nomi"),
                      const TextFieldsWidget(text: "Address"),
                      const TextFieldsWidget(text: "Telefon"),
                      const TextFieldsWidget(text: "Email"),
                      const TextFieldsWidget(text: "Web"),
                      Container(
                        alignment: Alignment.center,
                        width: 140 / 1.5,
                        height: 44 / 1.5,
                        decoration: BoxDecoration(
                          color: const Color(0xFF4CAF50),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          "Qo'shish",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 16 / 1.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.only(bottom: 22 / 1.5),
                    child: Row(
                      children: [
                        Container(
                          width: 376 / 1.5,
                          height: 42 / 1.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                color: const Color(0xFFB5BDC5),
                                width: 1,
                              )),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: TextField(
                                    keyboardType: TextInputType.text,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.allow(
                                          RegExp(r'[A-Za-z]')),
                                    ],
                                    style: GoogleFonts.inter(
                                      color: const Color(0xFF344054),
                                      fontSize: 16 / 1.5,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 103 / 1.5,
                                height: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF4CAF50),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(3),
                                    bottomLeft: Radius.circular(3),
                                  ),
                                ),
                                child: Text(
                                  "Qo'shish",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16 / 1.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            alignment: Alignment.center,
                            width: 103 / 1.5,
                            height: 42 / 1.5,
                            decoration: BoxDecoration(
                              color: const Color(0xFF404E67),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Text(
                              "Excel",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16 / 1.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 103 / 1.5,
                          height: 42 / 1.5,
                          decoration: BoxDecoration(
                            color: const Color(0xFF3A69BB),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Text(
                            "Yuklash",
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16 / 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
