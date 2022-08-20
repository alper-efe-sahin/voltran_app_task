import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voltran_app_task/application/counter/counter_controller.dart';

class CounterPage extends GetView {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Voltran App Task'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Counter value is ${counterController.count}",
                style: TextStyle(
                  fontSize: 25,
                  color: counterController.changeTextColor ? Colors.red : Colors.blue,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                counterController.tapToFab();
                counterController.recordTime();
              },
              onLongPress: () {
                counterController.longPressActionFromFAB();
              },
              child: const Text(
                "+1",
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
