import 'package:app_inventario/usuario/models/user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController{

  User user = User.fromJson(GetStorage().read('user') ?? {});

  HomeController(){
    print('USUARIO DE SESION ${user.toJson()}');
  }

  void goToPage(String rol){
    if(rol == 'Empleado'){
      Get.toNamed('/products');
    } else {
      Get.toNamed('/admin/provList');
    }
  }


}