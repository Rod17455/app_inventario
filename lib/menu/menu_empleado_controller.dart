import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MenuEmpleadoController extends GetxController{
  void goToProductosPendientes(){
    Get.toNamed('/productsPendientes');
  }

  void goToProductosRechazados(){
    Get.toNamed('/productsRechazados');
  }
  void signOut() {
    GetStorage().remove('user');
    Get.offNamedUntil(
        '/', (route) => false); //ELIMINA EL HISTORIAL DE PANTALLAS
  }
}