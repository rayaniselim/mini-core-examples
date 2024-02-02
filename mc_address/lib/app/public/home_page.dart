import 'package:flutter/material.dart';
import 'package:mc_address/app/public/core/widgets/button.dart';

import 'core/widgets/text_field_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: TextFieldWidget(),
                ),
                TextButtonWidget(
                  color: Colors.amber,
                  colorText: Colors.black,
                  height: 40,
                  width: 90,
                  text: 'Pesquisar',
                  onPressed: () {},
                ),
                sizedBox,

                /// IMPLEMENTAR O VISIBILITY
                Center(
                  child: Card(
                    child: Container(
                      height: 230,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('CEP: '),
                            const Text('UF:'),
                            const Text('Cidade:'),
                            const Text('Bairro:'),
                            const Text('Logradouro:'),
                            sizedBox,
                            Center(
                              child: TextButtonWidget(
                                onPressed: () {},
                                color: Colors.red.shade500,
                                height: 40,
                                width: 90,
                                text: 'limpar',
                                colorText: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
