import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'dart:ui';

String getKey(String key) {
  final GetStorage storageBox = GetStorage();
  return storageBox.read(key);
}

void setValue(String key, String value) {
  final GetStorage storageBox = GetStorage();
  storageBox.write(key, value);
}

void clearAll() {
  final GetStorage storageBox = GetStorage();
  storageBox.erase();
}

void clearValue(String key){
  final GetStorage storageBox = GetStorage();
  storageBox.remove(key);
}


