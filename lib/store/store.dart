import 'package:get_storage/get_storage.dart';

final userStoreKeys = <String, String>{
  "TOKEN": "token",
  "EMAIL": "email",
  "AVATAR": "avatar",
  "NAME": "name",
  "NICKNAME": "nick_name",
  "DEPARTMENTNAME": "department_name",
  "POSITIONNAME": "position_name",
  "EMPLOYDATE": "employ_date",
};

final settingStoreKeys = <String, String>{
  'LANGUAGE': "language",
  'COUNTRY': "country",
  "THEME": "theme",
};

void storeInit() {
  storeSetValue(settingStoreKeys['LANGUAGE']!, 'en');
  storeSetValue(settingStoreKeys['COUNTRY']!, 'US');
}

dynamic storeGetValue(String key) {
  final GetStorage storageBox = GetStorage();
  return storageBox.read(key);
}

void storeSetValue(String key, dynamic value) {
  final GetStorage storageBox = GetStorage();
  storageBox.write(key, value);
}

void storeClearAll() {
  final GetStorage storageBox = GetStorage();
  storageBox.erase();
}

void storeClearValue(String key) {
  final GetStorage storageBox = GetStorage();
  storageBox.remove(key);
}

void storeSaveMap(Map maps, Map data) {
  for (String value in maps.values) {
    storeSetValue(value, data[value]!);
  }
}
