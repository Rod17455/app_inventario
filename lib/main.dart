import 'package:app_inventario/forget.dart';
import 'package:app_inventario/register.dart';
import 'package:app_inventario/usuario/pages/login/login_page.dart';
import 'package:app_inventario/usuario/pages/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Inventario de Ropa',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage())
      ],
      navigatorKey: Get.key,
    );
  }
}

