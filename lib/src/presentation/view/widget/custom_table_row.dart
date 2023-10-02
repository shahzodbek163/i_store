import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_store/src/controller/cubits/tab_selector/tab_selector_cubit.dart';

class CustomTableRow extends StatefulWidget {
  final List<String> tapsList;
  final Function(int index)? onChanged;

  const CustomTableRow({super.key, required this.tapsList, this.onChanged});

  @override
  State<CustomTableRow> createState() => _CustomTableRowState();
}

class _CustomTableRowState extends State<CustomTableRow> {
  int selectBtn = 0;
  final tabSelectorCubit = TabSelectorCubit();
  int onChange(int index) {
    return index;
  }

  @override
  void initState() {
    super.initState();
    widget.onChanged;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: BlocBuilder<TabSelectorCubit, TabSelectorState>(
        bloc: tabSelectorCubit,
        builder: (context, state) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.tapsList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 30 / 1.3),
                child: InkWell(
                  borderRadius: BorderRadius.circular(3),
                  onTap: () {
                    tabSelectorCubit.selector(index);
                    widget.onChanged?.call(index);
                    log(index.toString());
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Text(
                      widget.tapsList[index],
                      style: GoogleFonts.inter(
                        fontSize: 20 / 1.5,
                        fontWeight: FontWeight.w500,
                        color: state.selectedIndex == index
                            ? const Color(0xFFFF5C00)
                            : const Color(0xFF404E67),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
