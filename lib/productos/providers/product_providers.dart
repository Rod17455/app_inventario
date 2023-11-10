import 'dart:ui';

import 'package:app_inventario/productos/models/detailProduct.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../usuario/models/response_api.dart';
import '../../usuario/models/user.dart';
import '../models/products.dart';

class ProductsProviders extends GetConnect{
  //SESION DEL USUARIO.
  User userSession = User.fromJson(GetStorage().read('user') ?? {});
  
  Future<List<Product>> bandejaProducto(int pageSize, int pageIndex, String nombreProducto) async {

    Response response = await get(
      'http://localhost:5000/api/producto?pageSize=$pageSize&pageIndex=$pageIndex&search=$nombreProducto',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${userSession.sesionToken}'
      }
    );

    if (response.statusCode != 200) {
      Get.snackbar('Peticion denegada',
          'Error en recuperar la información',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      return [];

  }
  print('${response.body}');
  List<Product> product = Product.fromJsonList(response.body['registers'] ?? []);

  return product;

  }

  Future<ResponseApi> detalle(int idProducto) async {
    //ALMACENA EL RESULTADO MEDINATE LA URL
    Response response =
        await post('http://localhost:5000/api/producto/detalle', {
      'ID': idProducto
    }, headers: {
      //ESTA RESPUESTA LO CONVIERTE APLICATIVO JSON
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${userSession.sesionToken}'
    }); // ESPERAR HASTA QUE EL SERVIDOR NOS RETORNE LA RESPUESTA

    //COMPARA SI CONTIENE ALGUN DATO
    if (response.body == null) {
      Get.snackbar('Error', 'No se pudo ejecutar la peticion',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      return ResponseApi();
    }

    ResponseApi responseApi = ResponseApi.fromJson(response.body);
    return responseApi;
  }

  Future<ResponseApi> autorizar(DetailProduct product) async {
    //ALMACENA EL RESULTADO MEDINATE LA URL
    Response response =
        await post('http://localhost:5000/api/producto', 
    {
      "id": product.id,
      "nomProd": product.nomProd,
      "descProd": product.descProd,
      "categoria": product.categoria,
      "precio": product.precio,
      "stock": product.stock
    }, headers: {
      //ESTA RESPUESTA LO CONVIERTE APLICATIVO JSON
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${userSession.sesionToken}'
    }); // ESPERAR HASTA QUE EL SERVIDOR NOS RETORNE LA RESPUESTA

    //COMPARA SI CONTIENE ALGUN DATO
    if (response.body == null) {
      Get.snackbar('Error', 'No se pudo ejecutar la peticion',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      return ResponseApi();
    }

    ResponseApi responseApi = ResponseApi.fromJson(response.body);
    return responseApi;
  }

  Future<List<Product>> bandejaProductoPendientes(int pageSize, int pageIndex,) async {

    Response response = await get(
      'http://localhost:5000/api/producto/pendientes?pageSize=$pageSize&pageIndex=$pageIndex&search=',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${userSession.sesionToken}'
      }
    );

    if (response.statusCode != 200) {
      Get.snackbar('Peticion denegada',
          'Error en recuperar la información',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      return [];

  }
  print('${response.body}');
  List<Product> product = Product.fromJsonList(response.body['registers'] ?? []);

  return product;

  }

  Future<List<Product>> bandejaProductoRechazados(int pageSize, int pageIndex,) async {

    Response response = await get(
      'http://localhost:5000/api/producto/rechazadas?pageSize=$pageSize&pageIndex=$pageIndex&search=',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${userSession.sesionToken}'
      }
    );

    if (response.statusCode != 200) {
      Get.snackbar('Peticion denegada',
          'Error en recuperar la información',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      return [];

  }
  print('${response.body}');
  List<Product> product = Product.fromJsonList(response.body['registers'] ?? []);

  return product;

  }

  Future<List<Product>> bandejaProductoXEntregar(int pageSize, int pageIndex,) async {

    Response response = await get(
      'http://localhost:5000/api/producto/entregar?pageSize=$pageSize&pageIndex=$pageIndex&search=',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${userSession.sesionToken}'
      }
    );

    if (response.statusCode != 200) {
      Get.snackbar('Peticion denegada',
          'Error en recuperar la información',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      return [];

  }
  print('${response.body}');
  List<Product> product = Product.fromJsonList(response.body['registers'] ?? []);

  return product;

  }
}