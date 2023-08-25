import 'package:code/firebase_options.dart';
import 'package:code/view/screens/home_page.dart';
import 'package:code/view/screens/login_page.dart';
import 'package:code/view/screens/splach_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await GetStorage.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      getPages: [
        GetPage(
          name: "/",
          page: () => SplachScreen(),
        ),
        GetPage(
          name: "/login_page",
          page: () => LoginPage(),
        ),
        GetPage(
          name: "/home_page",
          page: () => HomePage(),
        ),
      ],
    ),
  );
}
