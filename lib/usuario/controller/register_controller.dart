import 'package:app_inventario/usuario/providers/user_providers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../models/user.dart';

class RegisterController extends GetxController{

  TextEditingController usernameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  UsersProviders usersProviders = UsersProviders();

  void register(BuildContext context) async{
    String username = usernameController.text.trim();
    String name = nameController.text;
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    if(isValidForm(username, password, name, email, confirmPassword)){

      ProgressDialog progressDialog = ProgressDialog(context: context);
      progressDialog.show(max: 100, msg: 'Refistrando Datos....');
      User user = User(
        correoElectronico: email,
        apellido: name,
        nomUser: username,
        password: password
      );
      progressDialog.close();
      Response response = await usersProviders.create(user);

      print('RESPONSE: ${response.body}');

      Get.snackbar("Formulario Valido", 'Usuario Registrado');
    }

    
  }

  bool isValidForm(
    String username, 
    String password,
    String name,
    String email,
    String confirmPassword
    ) {

    if(email.isEmpty){
      Get.snackbar('Formulario no valido', 'Debes de ingresar el email');
      return false;
    }

    if(!GetUtils.isEmail(email)){
      Get.snackbar('Formulario no valido', 'El email no es valido');
      return false;
    }

    if(name.isEmpty){
      Get.snackbar('Formulario no valido', 'Debes de ingresar tu nombre completo');
      return false;
    }

    if(username.isEmpty){
      Get.snackbar('Formulario no valido', 'Debes de ingresar un usuario');
      return false;
    }

    if(password.isEmpty){
      Get.snackbar('Formulario no valido', 'Debes de ingresar una contraseña');
      return false;
    }

    if(confirmPassword.isEmpty){
      Get.snackbar('Formulario no valido', 'Debes de ingresar la confirmación de la contraseña');
      return false;
    }

    if(password != confirmPassword){
      Get.snackbar('Formulario no valido', 'Contraseña no valida, verifique si es igual');
      return false;
    }

    return true;
  }



}