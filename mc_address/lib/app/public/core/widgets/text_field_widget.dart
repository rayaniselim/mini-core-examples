import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final void Function(String) onSubmitted;
  const TextFieldWidget({
    Key? key,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    return TextField(
      controller: textController,
      onSubmitted: onSubmitted,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: 'EX: 01.345-678',
        suffixIcon: IconButton(
          color: Colors.black,
          icon: const Icon(
            Icons.search,
          ),
          onPressed: () {
            onSubmitted(textController.text);
          },
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
