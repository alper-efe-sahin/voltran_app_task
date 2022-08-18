import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voltran_app_task/presentation/pages/counter_page.dart';

class AppWidget extends GetView {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}
