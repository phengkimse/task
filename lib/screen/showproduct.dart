import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/screen/inputcontroller.dart';
import 'package:task/screen/product.dart';

class ShowProduct extends StatelessWidget {
  const ShowProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Center(
            child: TextButton(
          child: Text("data"),
          onPressed: () {
            Get.to(InputProduct());
          },
        )),
        // body: GetBuilder<InputController>(
        //     init: InputController(),
        //     builder: (controller) {
        //       return Obx(
        //         () => Container(
        //           height: 60,
        //           color: Colors.grey,
        //           child: Column(
        //             children: [
        //               Text(
        //                 ' user1=${controller.userInput1}, ',
        //               ),
        //               Text(
        //                 ' user1=${controller.userInput2}, ',
        //               ),
        //             ],
        //           ),
        //         ),
        //       );
        //     }),
      ),
    );
  }
}
