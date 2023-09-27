import 'package:flutter/material.dart';
import 'package:i_store/src/model/table_model.dart';

class CustomTable extends StatelessWidget {
  final List<TableModel> tables;
  const CustomTable({
    super.key,
    required this.tables,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35 * tables.length + 35,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [BoxShadow(blurRadius: 6, color: Colors.black12)],
      ),
      child: Row(
        children: [
          Flexible(
            flex: 6,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Column(
                    children: List.generate(
                      tables.length + 1,
                      (index) => Container(
                        width: 40,
                        height: 35,
                        alignment: index == 0
                            ? Alignment.center
                            : const Alignment(-0.4, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(index == 0 ? 8 : 0),
                            bottomLeft:
                                Radius.circular(index == tables.length ? 8 : 0),
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
                            fontWeight:
                                index == 0 ? FontWeight.w600 : FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: List.generate(
                        tables.length + 1,
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
                            index == 0 ? "Name" : tables[index - 1].name,
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
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 8,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Row(
                children: [
                  Flexible(
                    flex: 5,
                    child: Column(
                      children: List.generate(
                        tables.length + 1,
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
                                ? "Qo'shilgan sana"
                                : tables[index - 1].addedDate,
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
                  ),
                  Flexible(
                    flex: 7,
                    child: Column(
                      children: List.generate(
                        tables.length + 1,
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
                                      index == tables.length ? 8 : 0),
                                )),
                            child: Row(
                              children: [
                                Text(
                                  index == 0 ? "User" : tables[index - 1].user,
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
