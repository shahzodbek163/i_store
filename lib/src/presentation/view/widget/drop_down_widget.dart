import 'dart:html';

import 'package:flutter/material.dart';
import 'package:i_store/src/domen/response/stuffmodel/stuff_get_all_res.dart';
import 'package:i_store/src/utils/app_const.dart';

class DropDownWidget extends StatefulWidget {
  final List<StuffGetAllResModel> searchModelList;

  final Function(int value)? indexChange;
  const DropDownWidget({
    super.key,
    required this.searchModelList,
    required this.indexChange,
  });
  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  void initState() {
    super.initState();
    widget.indexChange;
  }

  bool isOverlayOn = false;
  final textEdit = TextEditingController();
  OverlayEntry? entry;
  final layerLink = LayerLink();
  void showOverlay() {
    final overlay = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    entry = OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          showWhenUnlinked: false,
          link: layerLink,
          offset: Offset(0, size.height + 4),
          child: buildOverlay(),
        ),
      ),
    );
    overlay.insert(entry!);
  }

  void hideOverlay() {
    entry?.remove();
    entry = null;
  }

  Widget buildOverlay() {
    return Material(
      elevation: 0,
      child: Container(
          height: widget.searchModelList.length * 26,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1,
              color: Colors.white,
            ),
          ),
          child: ListView.builder(
              itemCount: widget.searchModelList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 3,
                    ),
                    child: SizedBox(
                      height: 20,
                      child: Row(
                        children: [
                          Text(widget.searchModelList[index].name),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    textEdit.value = TextEditingValue(
                      text: widget.searchModelList[index].name,
                    );
                    widget.indexChange?.call(widget.searchModelList[index].id);
                    hideOverlay();
                    isOverlayOn = false;
                    setState(() {});
                  },
                );
              })),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: layerLink,
      child: SizedBox(
        height: 57 / 1.5,
        child: TextField(
          controller: textEdit,
          style: const TextStyle(fontSize: 14),
          onTap: () {
            if (isOverlayOn == false) {
              showOverlay();
              isOverlayOn = true;
              setState(() {});
            } else {
              hideOverlay();
              isOverlayOn = false;
              setState(() {});
            }
          },
          decoration: InputDecoration(
            fillColor: Colors.white,
            focusColor: Colors.white,
            hoverColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            hintText: "",
            hintStyle: headerTextStyle,
            suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                width: 1,
                color: Color(0xFFD0D5DD),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                width: 1,
                color: Color(0xFFD0D5DD),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                width: 1,
                color: Color(0xFFD0D5DD),
              ),
            ),
            filled: false,
          ),
          onSubmitted: (value) {
            hideOverlay();
          },
        ),
      ),
    );
  }
}
