import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';

class WelcomeScreen extends StatelessWidget {
  HomeController con = Get.put(HomeController());
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 110, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.shopping_bag,
              size: 120.0,
              color: Colors.white,
            ),
            SizedBox(height: 20.0),
            const Text(
              "Welcome to the ",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "${con.user.nomUser}",
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40.0),
            const Text(
              "Your rols:",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            //_roles(context),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: con.user.roles!.map((role){
                return ListTile(
                  title: TextButton(
                    child: Text(
                      role,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => con.goToPage(role, context),
                  ),
                );
              }).toList(),
            ),
            TextButton(
              onPressed:()=>con.signOut(), 
              child: const Text(
                      'Salir de la sesión',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
            )
            
          ],
        ),
      ),
    );
  }

  /*Widget _roles(BuildContext context){
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: con.user.roles?.length,
      itemBuilder:(context, index){
        return ListTile(
          title: Text(con.user.roles![index]),
        );
      } ,
    );
  }*/

}
