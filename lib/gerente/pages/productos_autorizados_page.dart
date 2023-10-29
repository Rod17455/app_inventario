import 'package:app_inventario/menu/menu_gerente.dart';
import 'package:flutter/material.dart';

class ProductosAutorizadosPage extends StatefulWidget {
  const ProductosAutorizadosPage({super.key});

  @override
  State<ProductosAutorizadosPage> createState() => _ProductosAutorizadosPageState();
}

class _ProductosAutorizadosPageState extends State<ProductosAutorizadosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: AppBar(
           backgroundColor: Color.fromARGB(255, 223, 102, 10),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30.0),
                  ),
            ),
            flexibleSpace: Container(
                  margin: const EdgeInsets.only(top: 15),
                  alignment: Alignment.topCenter,
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: [
                      _textFieldSearch(
                        context,
                        
                    ),
                ],
              ),
            )
        ),
      ),
      drawer: MenuGerente(),
      body: SingleChildScrollView(
        child: _cardProductos(context),
      ),
    );
  }

   Widget _botonActualizar(){
      return Container(
              padding: const EdgeInsets.fromLTRB(50, 120, 50, 50),
               child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                            //NoDataWidget(text: 'No hay órdenes pendientes'),
                const SizedBox(height: 20),
                 SizedBox(
                     height: 45,
                     //width: 60,
                      child: ElevatedButton(
                     onPressed: () {
                         
                       },
                      child: const Text('Actualizar',
                           style: TextStyle(color: Colors.white))),
                      )
                    ],
                  ),
                 );
  }

  Widget _textFieldSearch(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const Text(
          'Productos Autorizados',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 45,
          width: MediaQuery.of(context).size.width * 0.80,
          child: TextField(
            keyboardType: TextInputType.number,
            //onChanged: widget.con.onChangeText,
            //controller: widget.con.cveOrdenController,
            decoration: InputDecoration(
                hintText: 'Buscar Nom. Producto',
                suffixIcon: const Icon(Icons.search, color: Colors.grey),
                hintStyle: const TextStyle(fontSize: 17, color: Colors.grey),
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey)),
                contentPadding: const EdgeInsets.all(15)),
          ),
        ),
        //const WarningWidgetGetX(),
      ],
    ));
  }

  Widget _cardProductos(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                      color: const Color.fromARGB(255, 217, 216, 216),
                      border: Border.all(color: Colors.white10)),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Center(
                          child: Container(
                            height: 45.0,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    tileMode: TileMode.repeated,
                                    colors: [
                                      Color.fromARGB(255, 223, 102, 10),
                                      Color.fromARGB(255, 117, 179, 9),
                                    ])),
                            child: Center(
                              child: Text(
                                 'ID PRODUCTO',
                                style: const TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.only(top: 5.0, left: 15.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                         Text(
                                          'Nombre del Producto:',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold
                                              // color: Colors.white24
                                              ),
                                        ),
                                        SizedBox(height: 5),
                                      ],
                                    ),
                                    SizedBox(
                                    //height: 45,
                                    width: screenSize.width / 1.25,
                                    child: Text(
                                      'Producto 1',
                                    ),
                                  ),
                                  Column(
                                      children: <Widget>[
                                         Text(
                                          'Fecha de registro:',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold
                                              // color: Colors.white24
                                              ),
                                        ),
                                        SizedBox(height: 5),
                                      ],
                                    ),
                                    SizedBox(
                                    //height: 45,
                                    width: screenSize.width / 1.25,
                                    child: Text(
                                      'Descripción Producto 1',
                                    ),
                                  ),
                                  Column(
                                      children: <Widget>[
                                         Text(
                                          'Nombre del empleado:',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold
                                              // color: Colors.white24
                                              ),
                                        ),
                                        SizedBox(height: 5),
                                      ],
                                    ),
                                    SizedBox(
                                    //height: 45,
                                    width: screenSize.width / 1.25,
                                    child: Text(
                                      'Categoria Producto 1',
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      const Text('Precio:',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '120',
                                        style: const TextStyle(fontSize: 16.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      const Text('Cantidad:',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '120',
                                        style: const TextStyle(fontSize: 16.0),
                                      ),
                                    ],
                                  ),
                                  Column(
                                      children: <Widget>[
                                         Text(
                                          'Estatus:',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold
                                              // color: Colors.white24
                                              ),
                                        ),
                                        SizedBox(height: 5),
                                      ],
                                    ),
                                    SizedBox(
                                    //height: 45,
                                    width: screenSize.width / 1.25,
                                    child: Text(
                                      'Estatus Producto 1',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  )

                                 ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: ButtonTheme(
                            height: 45,
                            minWidth: screenSize.width / 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: MaterialButton(
                              onPressed: () {},
                              child: const Text(
                                'Ver detalle',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              color: Color.fromARGB(255, 216, 141, 10),
                            )),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                 ],
              ),
            ),
          )
        ],
      ),
    );
  }
}