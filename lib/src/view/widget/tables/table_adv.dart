import 'package:flutter/material.dart';
import 'package:i_store/src/utils/date_to_string.dart';

class TableAdv extends StatelessWidget {
  final List<TableAdvModel> element;

  const TableAdv({super.key, required this.element});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35 * element.length.toDouble() + 35,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [BoxShadow(blurRadius: 6, color: Colors.black12)],
      ),
      child: Row(
        children: [
          Flexible(
              flex: 3,
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Column(
                      children: List.generate(
                        element.length + 1,
                        (index) => Container(
                          width: 40,
                          height: 35,
                          alignment: index == 0
                              ? Alignment.center
                              : const Alignment(-0.4, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(index == 0 ? 8 : 0),
                              bottomLeft: Radius.circular(
                                  index == element.length ? 8 : 0),
                            ),
                            color: index == 0
                                ? const Color(0xFFF1F3F9)
                                : index % 2 == 1
                                    ? Colors.white
                                    : const Color(0xFFF8F9FC),
                          ),
                          child: Text(
                            index == 0 ? "№" : index.toString(),
                            style: TextStyle(
                              color: const Color(0xFF1D2433),
                              fontWeight: index == 0
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 5,
                        child: Column(
                          children: List.generate(
                            element.length + 1,
                            (index) => Container(
                              height: 35,
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: index == 0
                                    ? const Color(0xFFF1F3F9)
                                    : index % 2 == 1
                                        ? Colors.white
                                        : const Color(0xFFF8F9FC),
                              ),
                              child: Text(
                                index == 0 ? "Name" : element[index - 1].name,
                                style: TextStyle(
                                  color: const Color(0xFF1D2433),
                                  fontWeight: index == 0
                                      ? FontWeight.w600
                                      : FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        )),
                    Flexible(
                        flex: 4,
                        child: Column(
                          children: List.generate(
                            element.length + 1,
                            (index) => Container(
                              height: 35,
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: index == 0
                                    ? const Color(0xFFF1F3F9)
                                    : index % 2 == 1
                                        ? Colors.white
                                        : const Color(0xFFF8F9FC),
                              ),
                              child: Text(
                                index == 0
                                    ? "Address"
                                    : element[index - 1].address,
                                style: TextStyle(
                                  color: const Color(0xFF1D2433),
                                  fontWeight: index == 0
                                      ? FontWeight.w600
                                      : FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        )),
                    Flexible(
                        flex: 4,
                        child: Column(
                          children: List.generate(
                            element.length + 1,
                            (index) => Container(
                              height: 35,
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: index == 0
                                    ? const Color(0xFFF1F3F9)
                                    : index % 2 == 1
                                        ? Colors.white
                                        : const Color(0xFFF8F9FC),
                              ),
                              child: Text(
                                index == 0
                                    ? "Telefon"
                                    : element[index - 1].phone,
                                style: TextStyle(
                                  color: const Color(0xFF1D2433),
                                  fontWeight: index == 0
                                      ? FontWeight.w600
                                      : FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              )),
          Flexible(
            flex: 4,
            child: SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Flexible(
                      flex: 3,
                      child: Column(
                        children: List.generate(
                          element.length + 1,
                          (index) => Container(
                            height: 35,
                            width: double.infinity,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: index == 0
                                  ? const Color(0xFFF1F3F9)
                                  : index % 2 == 1
                                      ? Colors.white
                                      : const Color(0xFFF8F9FC),
                            ),
                            child: Text(
                              index == 0 ? "Email" : element[index - 1].eMail,
                              style: TextStyle(
                                color: const Color(0xFF1D2433),
                                fontWeight: index == 0
                                    ? FontWeight.w600
                                    : FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      )),
                  Flexible(
                      flex: 3,
                      child: Column(
                        children: List.generate(
                          element.length + 1,
                          (index) => Container(
                            height: 35,
                            width: double.infinity,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: index == 0
                                  ? const Color(0xFFF1F3F9)
                                  : index % 2 == 1
                                      ? Colors.white
                                      : const Color(0xFFF8F9FC),
                            ),
                            child: Text(
                              index == 0 ? "Web" : element[index - 1].web,
                              style: TextStyle(
                                color: const Color(0xFF1D2433),
                                fontWeight: index == 0
                                    ? FontWeight.w600
                                    : FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      )),
                  Flexible(
                      flex: 2,
                      child: Column(
                        children: List.generate(
                          element.length + 1,
                          (index) => Container(
                            height: 35,
                            width: double.infinity,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: index == 0
                                  ? const Color(0xFFF1F3F9)
                                  : index % 2 == 1
                                      ? Colors.white
                                      : const Color(0xFFF8F9FC),
                            ),
                            child: Text(
                              index == 0
                                  ? "Date"
                                  : DateToString()
                                      .dateToString(element[index - 1].date),
                              style: TextStyle(
                                color: const Color(0xFF1D2433),
                                fontWeight: index == 0
                                    ? FontWeight.w600
                                    : FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      )),
                  Flexible(
                    flex: 4,
                    child: Column(
                      children: List.generate(
                        element.length + 1,
                        (index) => Container(
                            height: 35,
                            alignment: Alignment.centerLeft,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: index == 0
                                    ? const Color(0xFFF1F3F9)
                                    : index % 2 == 1
                                        ? Colors.white
                                        : const Color(0xFFF8F9FC),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(index == 0 ? 8 : 0),
                                  bottomRight: Radius.circular(
                                      index == element.length ? 8 : 0),
                                )),
                            child: Row(
                              children: [
                                Text(
                                  index == 0 ? "User" : element[index - 1].user,
                                  style: TextStyle(
                                    color: const Color(0xFF1D2433),
                                    fontWeight: index == 0
                                        ? FontWeight.w600
                                        : FontWeight.w400,
                                  ),
                                ),
                                const Spacer(),
                                index != 0
                                    ? InkWell(
                                        onTap: () {},
                                        child: const SizedBox(
                                            width: 36,
                                            child: Icon(
                                              Icons.more_vert,
                                              color: Color.fromARGB(
                                                  158, 10, 14, 54),
                                            )),
                                      )
                                    : const SizedBox(),
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TableAdvModel {
  final String name;
  final String address;
  final String phone;
  final String eMail;
  final String web;
  final DateTime date;
  final String user;

  TableAdvModel({
    required this.name,
    required this.address,
    required this.phone,
    required this.eMail,
    required this.web,
    required this.date,
    required this.user,
  });
}
