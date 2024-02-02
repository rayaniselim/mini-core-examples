import 'package:flutter/material.dart';
import 'package:mc_address/app/public/core/widgets/page_dropdown_mobile.dart';
import 'core/widgets/text_field_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final textController = TextEditingController();
    const SizedBox sizedBox = SizedBox(height: 30);



    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AppBar(
            title: const Text(
              'miniCore',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.grey.shade200,
          ),
          sizedBox,
          Center(
            child: Column(
              children: [
                const Text(
                  'Digite o CEP desejado',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: TextFieldWidget(
                    onSubmitted: (String cep) {
//// TODO: implementar
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => PageDropDown(
                                  address: ,///// TRAZER A INFO PRA CÁ,,
                                  onSubmitted: (String cep) {
                                    Navigator.pop(context);
                                  },
                                )),
                      );
                    },
                  ),
                ),
                sizedBox,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
