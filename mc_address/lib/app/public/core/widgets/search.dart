import 'package:flutter/material.dart';
import 'package:mc_address/app/public/core/widgets/button.dart';

class Search extends StatelessWidget {
  final String cepInput;
  final String uf;
  final String cidade;
  final String bairro;
  final String logradouro;
  const Search({
    super.key,
    required this.cepInput,
    required this.uf,
    required this.cidade,
    required this.bairro,
    required this.logradouro,
  });

  @override
  Widget build(BuildContext context) {
    SizedBox sizedBox = const SizedBox(height: 10);
    return Center(
      child: Container(
        height: 230,
        width: 330,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBox,
              Row(
                children: [
                  const Text('CEP:'),
                  Text(
                    cepInput,
                  ),
                ],
              ),
              sizedBox,
              Row(
                children: [
                  const Text('UF:'),
                  Text(
                    uf,
                  ),
                ],
              ),
              sizedBox,
              Row(
                children: [
                  const Text('Cidade:'),
                  Text(
                    cidade,
                  ),
                ],
              ),
              sizedBox,
              Row(
                children: [
                  const Text('Bairro:'),
                  Text(
                    bairro,
                  ),
                ],
              ),
              sizedBox,
              Row(
                children: [
                  const Text('Logradouro: '),
                  Text(
                    logradouro,
                  ),
                ],
              ),
              Center(
                child: TextButtonWidget(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.red.shade500,
                  height: 40,
                  width: 90,
                  text: 'Limpar',
                  colorText: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
