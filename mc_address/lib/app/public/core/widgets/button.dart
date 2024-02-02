import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final Color color;
  final Color colorText;
  final double height;
  final double width;
  final String text;
  final void Function()? onPressed;
  const TextButtonWidget(
      {super.key,
      required this.color,
      required this.colorText,
      required this.height,
      required this.width,
      required this.text,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: colorText,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
