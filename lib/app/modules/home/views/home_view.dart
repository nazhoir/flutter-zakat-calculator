import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kalkulator_zakat/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Kalkulator Zakat"),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisSpacing: 20,
        padding: EdgeInsets.all(20),
        crossAxisCount: 2,
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.ZAKAT_PERTANIAN);
            },
            child: Container(
              width: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.amber,
              ),
              child: const Center(child: Text("Zakat Pertanian")),
            ),
          ),
        ],
      ),
    );
  }
}
