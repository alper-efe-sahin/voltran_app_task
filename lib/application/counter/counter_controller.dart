import 'dart:async';

import 'package:get/get.dart';

class CounterController extends GetxController {
  final count = 0.obs;
  var countTime = 0;
  final RxList times = [].obs;
  var isTap = false;

  void increment() {
    count.value++;
  }

  void tapToFab() {
    isTap = !isTap;
  }

  void time() {
    Timer.periodic(
      const Duration(),
      (timer) {
        if (isTap) {
          timer.tick;
        } else {
          times.add(timer.tick);
          timer.cancel();
        }
      },
    );
  }
}
