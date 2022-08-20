import 'dart:async';

import 'package:get/get.dart';

class CounterController extends GetxController {
  final count = 0.obs;
  var countTime = 0;
  final RxList times = [].obs;
  var isTap = false;
  var changeColor = false;

  void tapToFab() {
    isTap = !isTap;
  }

  void time() {
    Timer.periodic(
      const Duration(milliseconds: 1),
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

  Future<void> longPressAction() async {
    count.value = 0;

    for (var i = 0; i < times.length; i++) {
      count.value++;
      changeColor = true;
      await Future.delayed(Duration(milliseconds: times[i]));
    }
    times.value = [];
    changeColor = false;
  }
}
