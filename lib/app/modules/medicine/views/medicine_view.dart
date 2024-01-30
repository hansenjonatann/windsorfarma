import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/medicine_controller.dart';

class MedicineView extends GetView<MedicineController> {
  const MedicineView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MedicineView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MedicineView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
