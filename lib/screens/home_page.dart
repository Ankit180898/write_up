import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:write_up/services/notifications_services.dart';
import 'package:write_up/services/theme_services.dart';
var notifyHelper;
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    notifyHelper=NotifyHelper();
    notifyHelper.initializeNotification();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            ThemeServices().switchTheme();
            notifyHelper.displayNotification(title: "Theme Changed", body:Get.isDarkMode?"Dark mode activated":"Light mode activated" );
          },
          child: Icon(
            Icons.nightlight_round,
            size: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.person,size: 20,),
          ),
        ],
      ) ,
      body: Column(
        children: [
          Text("Theme data",style: TextStyle(fontSize: 30),)
        ],
      ),
    );
  }
}
