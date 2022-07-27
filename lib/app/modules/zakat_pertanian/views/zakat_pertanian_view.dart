import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/zakat_pertanian_controller.dart';

class ZakatPertanianView extends GetView<ZakatPertanianController> {
  ZakatPertanianView({Key? key}) : super(key: key);

  final List data = [
    "Beras",
    "Padi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zakat Pertanian'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          DropdownButton(
            items: data
                .map(
                  (e) => DropdownMenuItem<String>(
                    child: Text(e),
                  ),
                )
                .toList(),
            onChanged: ((value) {
              print(value);
            }),
          )
        ],
      ),
    );
  }
}
