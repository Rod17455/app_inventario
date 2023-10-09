import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  void goToRegisterPage(){
    Get.toNamed('/register');
  }

  void login(){
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    print('Username ${username}');
    print('Password ${password}');

    if(isValidForm(username, password)){
      Get.snackbar("Formulario Valido", 'Estas listo para ingresar');
    }

    
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