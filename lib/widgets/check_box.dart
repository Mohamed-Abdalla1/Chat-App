import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  CheckBoxWidget({super.key, required this.onChanged});
  bool? onChanged;

  @override
  State<CheckBoxWidget> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Checkbox(
            checkColor: const Color.fromARGB(255, 228, 100, 143),
            activeColor: const Color.fromARGB(221, 7, 6, 6),
            value: widget.onChanged,
            onChanged: (value) {
              setState(() {
                widget.onChanged = value;
              });
            },
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              ' I Agree with privacy and policy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
