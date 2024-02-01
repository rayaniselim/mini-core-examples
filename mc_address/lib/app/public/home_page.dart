import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
          const SizedBox(
            height: 30,
          ),
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
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'EX: 01.345-678',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 40,
                    width: 90,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Pesquisar',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

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
                            const SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: TextButton(
                                  onPressed: () {},
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.red.shade500,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(6),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'limpar',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  )),
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
