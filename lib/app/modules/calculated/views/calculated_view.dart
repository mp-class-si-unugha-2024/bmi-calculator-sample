import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/calculated_controller.dart';

class CalculatedView extends GetView<CalculatedController> {
  const CalculatedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CalculatedView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CalculatedView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
