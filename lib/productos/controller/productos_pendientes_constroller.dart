import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../usuario/models/user.dart';
import '../models/products.dart';
import '../providers/product_providers.dart';

class ProductosListPendientesController extends GetxController{
  User user = User.fromJson(GetStorage().read('user') ?? {});

  ProductsProviders productaProvider = ProductsProviders();

  void goToDetalle(){
    Get.toNamed('/productsDetail');
  }

  Future<List<Product>> getBandeja(int pageSize, int pageIndex) async {
    return await productaProvider.bandejaProductoPendientes(pageSize, pageIndex);
  }
}