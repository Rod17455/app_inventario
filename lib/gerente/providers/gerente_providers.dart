import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../usuario/models/user.dart';

class GerenteProviders extends GetConnect{
  User userSession = User.fromJson(GetStorage().read('user') ?? {});
  
}