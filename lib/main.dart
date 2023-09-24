import 'package:flutter/material.dart';
import 'welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     home: HomePage(),
    );
  }
}



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoginScreen());
  }
}



class LoginScreen extends StatefulWidget {
  const LoginScreen ({super.key});

  @override
  State<LoginScreen > createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("App Inventario",
           style: TextStyle(
           color: Colors.black ,
           fontSize: 28.0,
           fontWeight: FontWeight.bold,
           ),
          ),

          const Text("Inicio de Sesión",
           style: TextStyle(color: Colors.black ,
           fontSize: 44.0,
           fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 44.0,
        ),
        const TextField(
          keyboardType: TextInputType.emailAddress,
          decoration:  InputDecoration(
            hintText: "Usuario",
            prefixIcon: Icon(Icons.person, color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 26.0,
        ),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Password",
            prefixIcon: Icon(Icons.lock, color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        const Text(
          "Se te olvidó la contraseña?",
           style: TextStyle(color: Colors.green),
        ),
        const SizedBox(
          height: 88.0,
        ),
        Container(
          width: double.infinity,
          child: RawMaterialButton(
            fillColor: Color.fromARGB(255, 244, 110, 0),
            elevation: 0.0,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0)),
            onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomeScreen()),
              );
            },
            child: Text("Login",
             style: TextStyle(color:Colors.white,
            fontSize: 18.0,
             ),
            ),
            ),
        ),
        ],
      ),
    );
  }
}