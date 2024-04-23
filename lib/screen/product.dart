import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/screen/inputcontroller.dart';
import 'package:task/screen/showproduct.dart';

class InputProduct extends StatefulWidget {
  const InputProduct({super.key});

  @override
  State<InputProduct> createState() => _InputProductState();
}

class _InputProductState extends State<InputProduct> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
      body: GetBuilder<InputController>(
        init: InputController(),
        builder: (controller) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller.inputController1,
                decoration: const InputDecoration(border: OutlineInputBorder()),
                onChanged: (value) {
                  controller.userInput1.value = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: controller.inputController2,
                decoration: const InputDecoration(border: OutlineInputBorder()),
                onChanged: (value) {
                  controller.userInput2.value = value;
                },
              ),
              SizedBox(height: 20),
              Obx(
                () => TextButton(
                  onPressed: () {
                    Get.to(const ShowProduct());
                  },
                  child: Column(
                    children: [
                      Text(
                        ' user1=${controller.userInput1}, ',
                      ),
                      Text(
                        ' user1=${controller.userInput2}, ',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    ));
  }
}
