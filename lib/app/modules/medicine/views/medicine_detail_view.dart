import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MedicineDetailView extends GetView {
  const MedicineDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MedicineDetailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MedicineDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
