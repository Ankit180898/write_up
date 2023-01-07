import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
class ThemeServices{
  final _dataService=GetStorage();
  final _key='isDarkMode';
  saveThemeData(bool isDarkMode)=>_dataService.write(_key,isDarkMode);
  bool _loadThemeFromData()=>_dataService.read(_key)??false;

  ThemeMode get theme=>_loadThemeFromData()?ThemeMode.dark:ThemeMode.light;

  void switchTheme(){
    Get.changeThemeMode(_loadThemeFromData()?ThemeMode.light:ThemeMode.dark);
    saveThemeData(!_loadThemeFromData());
  }
}