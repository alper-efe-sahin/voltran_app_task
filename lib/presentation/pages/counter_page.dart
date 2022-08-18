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
      floatingActionButton: FloatingActionButton.large(
          onPressed: () {
            counterController.increment();
          },
          child: const Icon(
            Icons.plus_one,
            size: 40,
          )),
      appBar: AppBar(
        title: const Text('Voltran App Task'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => Text(
            "Counter value is ${counterController.count}",
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
