import 'package:get/get.dart';

import '../../environment/environment.dart';
import '../models/response_api.dart';
import '../models/user.dart';

class UsersProviders extends GetConnect{

  String url = Environment.API_URL + 'usuario';

  Future<Response> create(User user) async{
    Response response = await post(
      'http://localhost:5000/api/usuario/register',
      user.toJson(),
      headers: {
          'Content-Type': 'application/json'
        }
    );
    print("ESTATUS: ${response.statusCode}");
     if(response.body == null){
      Get.snackbar('Error', 'No se pudo ejecutar la petición');
    }
    return response;
  }

  Future<ResponseApi> login(String username, String password) async{
    Response response = await post(
      'http://localhost:5000/api/usuario/token',
      {
        "username":username,
        "password":password
      },
      headers: {
          'Content-Type': 'application/json'
        }
    );
    print("ESTATUS: ${response.statusCode}");
    if(response.body == null){
      Get.snackbar('Error', 'No se pudo ejecutar la petición');
      return ResponseApi();
    }
    
    ResponseApi responseApi = ResponseApi.fromJson(response.body);

    return responseApi;


  }

}