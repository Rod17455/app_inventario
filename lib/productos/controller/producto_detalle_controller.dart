import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../usuario/models/user.dart';
import '../models/detailProduct.dart';

class ProductoDetalleController extends GetxController{
  
  User user = User.fromJson(GetStorage().read('user') ?? {});

  DetailProduct myProduct = DetailProduct.fromJson(GetStorage().read('producto') ?? {});
}