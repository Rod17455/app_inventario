import 'dart:async';

import 'package:app_inventario/productos/models/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../usuario/models/response_api.dart';
import '../../usuario/models/user.dart';
import '../models/detailProduct.dart';
import '../providers/product_providers.dart';

class ProductosListController extends GetxController{

  User user = User.fromJson(GetStorage().read('user') ?? {});

  ProductsProviders productaProvider = ProductsProviders();

  // CONTROLADORES DE LOS CAMPOS DE TEXTOS
  TextEditingController nombreProducto = TextEditingController();
  var nomProduct = ''.obs;
  Timer? searchOnStoppedTyping;

  void goToDetalle(){
    Get.toNamed('/productsDetail');
  }

  void detalle(int id) async {
    //ALAMACENA LA RESPUESTA QUE DA EL SERVIDOR, ESPECIFICANDO LA RUTA DE ESTE
    ResponseApi responseApi = await productaProvider.detalle(id);
    print('RESPONSE API: ${responseApi.toJson()}');

    //COMPARA SI CONTIENE DATOS
    if (responseApi.success == true) {
      GetStorage().write(
          'producto', responseApi.data); //ALMACENA LOS DATOS DE LA ORDEN DE COMPRA

      //LOS DATOS ALMACENADOS DEL SERVIDOR LOS ALMACENA EN UN OBJETO
      DetailProduct myProduct = DetailProduct.fromJson(GetStorage().read('producto') ?? {});

      goToDetalle();
    } else {
      Get.snackbar(
          'Detalle fallido', responseApi.message ?? 'Sin Conexión al Servidor',
          backgroundColor: const Color(0xFFD62A2C),
          colorText: Colors.white,
          duration: const Duration(seconds: 4, milliseconds: 1000),
          icon: const Icon(Icons.cancel_outlined));
      
    }
  }


  void onChangeText(String text) {
    const duration = Duration(milliseconds: 1000);
    if (searchOnStoppedTyping != null) {
      searchOnStoppedTyping?.cancel();
    }

    searchOnStoppedTyping = Timer(duration, () {
      nomProduct.value = text;
    });
  }

  Future<List<Product>> getBandeja(int pageSize, int pageIndex) async {
      return await productaProvider.bandejaProducto(pageSize, pageIndex,'');
  }

}