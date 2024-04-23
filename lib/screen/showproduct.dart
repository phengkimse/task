import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/screen/inputcontroller.dart';
import 'package:task/screen/product.dart';

class ShowProduct extends GetView<InputController> {
  const ShowProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Center(
      child: Obx(
        () => Column(
          children: [
            Text(
              ' user1=${controller.userInput1}, ',
            ),
           const SizedBox(
              height: 20,
            ),
            Text(
              ' user1=${controller.userInput2}, ',
            ),
          ],
        ),
      ),
    ));
  }
}
