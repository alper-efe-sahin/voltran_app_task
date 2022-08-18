import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voltran_app_task/application/counter/counter_controller.dart';

class CounterPage extends GetView {
  CounterPage({Key? key}) : super(key: key);
  final CounterController counterController = Get.put(CounterController());

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Counter value is ${counterController.count}",
                style: const TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              onPressed: () {
                counterController.increment();
              },
              child: const Text('Increment', style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
