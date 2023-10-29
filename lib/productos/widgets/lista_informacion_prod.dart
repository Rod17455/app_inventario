import 'package:flutter/material.dart';

class ListaInformacionProd extends StatelessWidget {
  const ListaInformacionProd({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
       ListTile(
          title: const Text(
            'Descripción del producto',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text('Desc', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
        ListTile(
          title: const Text(
            'Categoría del producto',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text('Desc', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),
        ListTile(
          title: const Text(
            'Nombre del proveedor',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:
              Text('Desc', style: const TextStyle(fontSize: 18)),
        ),
        const Divider(),


      ],
    );
  }
}