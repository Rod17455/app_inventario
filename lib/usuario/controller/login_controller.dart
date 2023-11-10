import 'package:app_inventario/usuario/models/response_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../providers/user_providers.dart';

class LoginController extends GetxController{

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  UsersProviders userProvider = UsersProviders();

  void goToRegisterPage(){
    Get.toNamed('/register');
  }

  void login() async{
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    print('Username ${username}');
    print('Password ${password}');

    if(isValidForm(username, password)){

      //goToHomePage();

      ResponseApi responseApi = await userProvider.login(username, password);

      print('Response Api: ${responseApi.toJson()}');

      if(responseApi.success == true){

        GetStorage().write('user', responseApi.data); // DATOS DEL USUARIO EN SESIÓN
        goToHomePage();

      } else {
        Get.snackbar('Login fallido', responseApi.message ?? '');
      }
      
      //Get.snackbar("Formulario Valido", 'Estas listo para ingresar');
    }

    
  }

  void goToHomePage(){
    Get.toNamed('/home');
  }

  bool isValidForm(String username, String password){
    if(username.isEmpty){
      Get.snackbar('Formulario no valido', 'Debes de ingresar tu usuario');
      return false;
    }

    if(password.isEmpty){
      Get.snackbar('Formulario no valido', 'Debes de ingresar tu contraseña');
      return false;
    }

    return true;
  }



}