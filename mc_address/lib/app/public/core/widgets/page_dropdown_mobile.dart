import 'package:flutter/material.dart';
import 'package:mc_address/app/interactor/models/address_model.dart';
import 'package:mc_address/app/public/core/widgets/search.dart';

class PageDropDown extends StatelessWidget {
  final void Function(String) onSubmitted;
  final AddressModel address;
  const PageDropDown({
    super.key,
    required this.onSubmitted,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'miniCore',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
      ),
      body: Search(
        cep: address.gia,
        uf: address.uf,
        cidade: address.localidade,
        bairro: address.bairro,
        logradouro: address.logradouro,
      ),
    );
  }
}
