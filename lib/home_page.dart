import 'package:animated_container/container_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ContainerController controller = Get.put(ContainerController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: Obx(() => AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              height: controller.height.value,
              width: controller.width.value,
              decoration: BoxDecoration(
                color: controller.color.value,
                borderRadius: controller.borderRadius.value,
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.animate(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
