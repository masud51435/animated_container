import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerController extends GetxController {
  RxDouble height = 200.0.obs;
  RxDouble width = 200.0.obs;
  Rx<Color> color = const Color.fromARGB(255, 60, 60, 245).obs;
  Rx<BorderRadius> borderRadius = BorderRadius.circular(10).obs;

  Future<void> animate() async {
    final random = Random();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      height.value = random.nextDouble() * 300;
      width.value = random.nextDouble() * 300;
      color.value = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        random.nextDouble(),
      );
      borderRadius.value = BorderRadius.circular(random.nextDouble() * 100);
    });
  }
}
