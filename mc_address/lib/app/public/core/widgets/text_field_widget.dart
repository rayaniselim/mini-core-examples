import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  // final TextEditingController controller;keyboardType
  const TextFieldWidget({
    Key? key,
    // required this.controller,keyboardType
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controller,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        hintText: 'EX: 01.345-678',
      ),
    );
  }
}
