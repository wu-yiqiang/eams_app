import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eams_app/views/home/home.dart';
import 'package:eams_app/binding.dart';
void main() {
  runApp(GetMaterialApp(home: Home(), initialBinding: AllControllerBinding()));
}
