import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:write_up/screens/home_page.dart';
import 'package:write_up/services/theme_services.dart';
import 'package:write_up/utils/themes.dart';
import 'package:get/get.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode:ThemeServices().theme ,
      home:  HomePage()
    );
  }
}
