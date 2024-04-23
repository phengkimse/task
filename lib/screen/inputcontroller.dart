import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputController extends GetxController {
  final TextEditingController inputController1 = TextEditingController();
  final TextEditingController inputController2 = TextEditingController();
  final RxString userInput1 = ''.obs;
  final RxString userInput2 = ''.obs;
}