import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/Controllers/CountController.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CountController controller = Get.find<CountController>();
    return Scaffold(
      body: Center(
        child: Obx(() => Text(
              controller.count.value.toString(),
              style: TextStyle(fontSize: 30),
            )),
      ),
    );
  }
}
