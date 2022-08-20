import 'dart:async';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final count = 0.obs;
  final RxList times = [].obs;
  var isTap = false;
  var changeTextColor = false;

  void tapToFab() {
    isTap = !isTap;
  }

  void recordTime() {
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

  Future<void> longPressActionFromFAB() async {
    count.value = 0;

    for (var i = 0; i < times.length; i++) {
      count.value++;
      changeTextColor = true;
      await Future.delayed(Duration(milliseconds: times[i]));
    }
    times.value = [];
    changeTextColor = false;
  }
}
