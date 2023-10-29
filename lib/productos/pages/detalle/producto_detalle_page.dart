import 'package:flutter/material.dart';

import '../../widgets/lista_informacion_prod.dart';

class ProductoDetallePage extends StatefulWidget {
  const ProductoDetallePage({super.key});

  @override
  State<ProductoDetallePage> createState() => _ProductoDetallePageState();
}

class _ProductoDetallePageState extends State<ProductoDetallePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información del producto'),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Color.fromARGB(255, 244, 110, 0),
        elevation: 0,
      ),
     key: _scaffoldKey,
     body: SafeArea(
      child: ListView(
          children: <Widget>[
            _encabezado(),
             const SizedBox(
                height: 5,
              ),
              ListaInformacionProd()
          ],
        )
      ),
    );
  }
  Widget _encabezado() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 244, 110, 0),
                    Color.fromARGB(255, 244, 110, 0)
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.5, 0.9])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Nombre del Producto: ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                '',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 55,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 75,
                color: Color.fromARGB(255, 244, 110, 0),
                child: ListTile(
                  title: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: const Text(
                    'Id producto',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 75,
                color: Color.fromARGB(255, 244, 110, 0),
                child: ListTile(
                  title: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: const Text(
                    'Stock',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 75,
                color: Color.fromARGB(255, 244, 110, 0),
                child: ListTile(
                  title: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: const Text(
                    'Precio',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}