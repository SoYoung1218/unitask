import 'package:flutter/material.dart';

enum TextDividerAlign { left, cneter, right }

class TextDivider extends StatelessWidget {
  final String text;
  final TextDividerAlign align;

  const TextDivider({super.key, required this.text, this.align = .cneter});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        if (align != .left) const Expanded(child: Divider()),
        Text(
          text,
          style: TextStyle(color: Colors.grey), // TextStlye
        ),
        if (align != .right) //Text
          const Expanded(child: Divider()),
      ],
    );
  }
}
