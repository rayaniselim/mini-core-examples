import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import '../interactor/actions/fetch_address_action.dart';
import '../interactor/atoms/address_atom.dart';
import 'core/widgets/page_dropdown_mobile.dart';
import 'core/widgets/text_field_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    fetchAddressAction('');
  }

  @override
  Widget build(BuildContext context) {
    // final textController = TextEditingController();
    const SizedBox sizedBox = SizedBox(height: 30);

    return RxBuilder(builder: (context) {
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
                        fetchAddressAction(cep);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PageDropDown(
                              onSubmitted: (String cep) {
                                Navigator.pop(context);
                              },
                              address: addressState.value,
                              cepInput: cep,
                            ),
                          ),
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
    });
  }
}
