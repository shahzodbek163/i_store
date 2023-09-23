import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTextfield extends StatelessWidget {
  const MainTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              "Kategoriya turlari",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.asset(
              "assets/stop.png",
              width: 16,
              height: 16,
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Container(
              width: 376 / 1.2,
              height: 36 / 1.2,
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
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: TextField(
                        style: GoogleFonts.inter(
                          color: const Color(0xFF344054),
                          fontSize: 16 / 1.2,
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
                    width: 72 / 1.2,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFF404E67),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3),
                        bottomLeft: Radius.circular(3),
                      ),
                    ),
                    child: Text(
                      "Excel",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 16 / 1.2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 14),
            Container(
              alignment: Alignment.center,
              width: 100 / 1.2,
              height: 36 / 1.2,
              decoration: BoxDecoration(
                color: const Color(0xFF4CAF50),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Text(
                "Qo'shish",
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16 / 1.2,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}