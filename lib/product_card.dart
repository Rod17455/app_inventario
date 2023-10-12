import 'package:flutter/material.dart';
import 'product_card.dart';

void main() {
  runApp(ProductCardWidget());
}

class ProductCardWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
    width: 360,
    height: 596,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(color: Colors.white),
    child: Stack(
        children: [
            Positioned(
                left: 16,
                top: 40,
                child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(children: [
                    ]),
                ),
            ),
            Positioned(
                left: 282,
                top: 40,
                child: Text(
                    '15:59',
                    style: TextStyle(
                        color: Color(0xFFFF5D57),
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.05,
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 112,
                child: Text(
                    'Productos',
                    style: TextStyle(
                        color: Color(0xFF273330),
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 164,
                child: Container(
                    width: 328,
                    height: 93,
                    padding: const EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                        color: Color(0xFFF6F8F8),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Container(
                                width: 312,
                                height: 77,
                                child: Stack(
                                    children: [
                                        Positioned(
                                            left: 0,
                                            top: 35,
                                            child: SizedBox(
                                                width: 135,
                                                child: Text(
                                                    'Precio: \$500',
                                                    style: TextStyle(
                                                        color: Color(0xFF6C7976),
                                                        fontSize: 16,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.11,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            child: SizedBox(
                                                width: 118,
                                                height: 14,
                                                child: Text(
                                                    'Cantidad: 50 pz',
                                                    style: TextStyle(
                                                        color: Color(0xFF6ABDA6),
                                                        fontSize: 14,
                                                        fontStyle: FontStyle.italic,
                                                        fontFamily: 'ABeeZee',
                                                        fontWeight: FontWeight.w400,
                                                        height: 0.10,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 232,
                                            top: 0,
                                            child: SizedBox(
                                                width: 80,
                                                height: 14,
                                                child: Text(
                                                    'Visualizar',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color: Color(0xFF273330),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.14,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 21,
                                            child: SizedBox(
                                                width: 312,
                                                child: Text(
                                                    'Playera Nike Roja',
                                                    style: TextStyle(
                                                        color: Color(0xFF273330),
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.10,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 296,
                                            top: 61,
                                            child: Container(
                                                width: 16,
                                                height: 16,
                                                padding: const EdgeInsets.symmetric(horizontal: 2.67, vertical: 2),
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                                child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                    ],
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 17,
                top: 265,
                child: Container(
                    width: 328,
                    height: 93,
                    padding: const EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                        color: Color(0xFFF1F5EF),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Container(
                                width: 312,
                                height: 77,
                                child: Stack(
                                    children: [
                                        Positioned(
                                            left: 0,
                                            top: 35,
                                            child: SizedBox(
                                                width: 135,
                                                child: Text(
                                                    'Precio: \$500',
                                                    style: TextStyle(
                                                        color: Color(0xFF6C7976),
                                                        fontSize: 16,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.11,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            child: SizedBox(
                                                width: 118,
                                                height: 14,
                                                child: Text(
                                                    'Cantidad: 25 pz',
                                                    style: TextStyle(
                                                        color: Color(0xFF6ABDA6),
                                                        fontSize: 14,
                                                        fontStyle: FontStyle.italic,
                                                        fontFamily: 'ABeeZee',
                                                        fontWeight: FontWeight.w400,
                                                        height: 0.10,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 232,
                                            top: 0,
                                            child: SizedBox(
                                                width: 80,
                                                height: 14,
                                                child: Text(
                                                    'Visualizar',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color: Color(0xFF273330),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.14,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 21,
                                            child: SizedBox(
                                                width: 312,
                                                child: Text(
                                                    'Playera Nike Negra',
                                                    style: TextStyle(
                                                        color: Color(0xFF273330),
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.10,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 296,
                                            top: 61,
                                            child: Container(
                                                width: 16,
                                                height: 16,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 185,
                top: 325,
                child: SizedBox(
                    width: 152,
                    height: 14,
                    child: Text(
                        'Producto casi escazo',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color(0xFFFF0000),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0.14,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 366,
                child: Container(
                    width: 328,
                    height: 93,
                    padding: const EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                        color: Color(0xFFF6F8F8),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Container(
                                width: 312,
                                height: 77,
                                child: Stack(
                                    children: [
                                        Positioned(
                                            left: 0,
                                            top: 35,
                                            child: SizedBox(
                                                width: 135,
                                                child: Text(
                                                    'Precio: \$500',
                                                    style: TextStyle(
                                                        color: Color(0xFF6C7976),
                                                        fontSize: 16,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.11,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            child: SizedBox(
                                                width: 118,
                                                height: 14,
                                                child: Text(
                                                    'Cantidad: 50 pz',
                                                    style: TextStyle(
                                                        color: Color(0xFF6ABDA6),
                                                        fontSize: 14,
                                                        fontStyle: FontStyle.italic,
                                                        fontFamily: 'ABeeZee',
                                                        fontWeight: FontWeight.w400,
                                                        height: 0.10,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 232,
                                            top: 0,
                                            child: SizedBox(
                                                width: 80,
                                                height: 14,
                                                child: Text(
                                                    'Visualizar',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color: Color(0xFF273330),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.14,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 21,
                                            child: SizedBox(
                                                width: 312,
                                                child: Text(
                                                    'Playera Nike Roja',
                                                    style: TextStyle(
                                                        color: Color(0xFF273330),
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        height: 0.10,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 296,
                                            top: 61,
                                            child: Container(
                                                width: 16,
                                                height: 16,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                                child: Stack(children: [

                                                ]),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 0,
                top: 0,
                child: Container(
                    width: 360,
                    height: 24,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 360,
                                    height: 24,
                                    decoration: BoxDecoration(color: Color(0xFFEDF0EF)),
                                ),
                            ),
                            Positioned(
                                left: 306,
                                top: 7,
                                child: Container(
                                    width: 46,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage("https://via.placeholder.com/46x10"),
                                            fit: BoxFit.fill,
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        ],
    ),
)
              ],
            ),
          ),
        ),
      ),
    );
  }
}