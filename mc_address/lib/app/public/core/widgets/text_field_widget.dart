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
          // funciona
          onPressed: () {
            onSubmitted(textController.text);
          },
        ),
      ),
      // textInputAction: TextInputAction.search,
      // onChanged: () {
      // AddressRepository.fetchAddress;
      // },
    );
  }
}
