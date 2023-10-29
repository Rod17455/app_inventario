import 'package:app_inventario/forget.dart';
import 'package:app_inventario/productos/pages/detalle/producto_detalle_page.dart';
import 'package:app_inventario/productos/pages/pendientes/productos_pendientes_page.dart';
import 'package:app_inventario/productos/pages/productos_all_page.dart';
import 'package:app_inventario/productos/pages/rechazadas/productos_rechazados_page.dart';
import 'package:app_inventario/register.dart';
import 'package:app_inventario/usuario/models/user.dart';
import 'package:app_inventario/usuario/pages/home/home_page.dart';
import 'package:app_inventario/usuario/pages/login/login_page.dart';
import 'package:app_inventario/usuario/pages/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'gerente/pages/productos_autorizados_page.dart';
import 'gerente/pages/productos_x_autorizar_page.dart';
import 'usuario/pages/home/welcome_screen.dart';

User userSession = User.fromJson(GetStorage().read('user') ?? {});

void main() async{
  await GetStorage.init();
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
      initialRoute: userSession.nomUser != null ? '/home' :'/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage()),
        GetPage(name: '/home', page: () => WelcomeScreen()),
        GetPage(name: '/products', page: () => ProductosListPage()),
        GetPage(name: '/productsPendientes', page: () => ProductosPendientesListPage()),
        GetPage(name: '/productsRechazados', page: () => ProductosRechazoListPage()),
        GetPage(name: '/productsDetail', page: () => ProductoDetallePage()),
        GetPage(name: '/gerente', page: () => ProductosXAutorizarPage()),
        GetPage(name: '/gerente/productsAutorizados', page: () => ProductosAutorizadosPage()),
        //ProductosXAutorizarPage
      ],
      navigatorKey: Get.key,
    );
  }
}

