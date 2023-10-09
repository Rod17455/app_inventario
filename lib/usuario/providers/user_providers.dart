import 'package:get/get.dart';

import '../../environment/environment.dart';
import '../models/user.dart';

class UsersProviders extends GetConnect{

  String url = Environment.API_URL + 'usuario';

  Future<Response> create(User user) async{
    Response response = await post(
      '$url/register',
      user.toJson(),
      headers: {
        'Content-Type': 'application/json'
      }
    );
    return response;
  }

}