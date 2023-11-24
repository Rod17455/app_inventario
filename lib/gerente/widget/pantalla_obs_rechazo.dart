import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ScreenObsPage extends StatefulWidget {
  const ScreenObsPage({super.key});

  @override
  State<ScreenObsPage> createState() => _ScreenObsPageState();
}

class _ScreenObsPageState extends State<ScreenObsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Rechazo de Orden de Compra"),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xFFD62A2C),
        elevation: 0,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          height: 500,
          child: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const Icon(Icons.block_sharp, color: Colors.red, size: 150.0),
              Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                child: const Text(
                  'Se rechazo la Orden de Compra a causa de: ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                height: 5 * 50.0,
                child: TextField(
                  maxLines: 10,
                  //controller: con.mensajeController,
                  decoration: InputDecoration(
                      hintText: 'Escribe el motivo del rechazo',
                      fillColor: Colors.grey[300],
                      filled: true),
                ),
              ),
              MaterialButton(
                height: 40,
                minWidth: 150,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () {
                  _showDialog(context);
                },
                child: const Text(
                  "Enviar",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Colors.blue,
              )
            ],
          )),
        ),
      ),
    );
  }

   void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Column(
              children: const <Widget>[
                Text(
                  "Aviso",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            content: const Text(
                "¿Estás seguro de rechazar está Solicitud?",
                style: TextStyle(fontSize: 18)),
            actions: <Widget>[
              CupertinoDialogAction(
                child: const Text(
                  "SI",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  _onLoading(context);
                },
              ),
              CupertinoDialogAction(
                child: const Text(
                  "NO",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  void _onLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: HexColor('#D6DBDF'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(
                height: 10,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: const Text(
                    "Loading...",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )),
            ],
          ),
        );
      },
    );
    Future.delayed(const Duration(seconds: 3), () {
      //con.mensajeRechazo();
    });
  }
  
}