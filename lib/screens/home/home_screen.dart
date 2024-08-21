import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pantallaSeleccionada = 0;
  bool _isMenuOpen = false; // Variable para controlar la visibilidad del menú

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          shape: const CircleBorder(),
          onPressed: () {
            Navigator.pushNamed(context, '/perfil');
          },
          elevation: 0.0,
          child: Container(
              width: 100,
              alignment: Alignment.center,
              child: const Image(
                image: AssetImage('assets/iconos/ICONO-PERFIL-1.png'),
                width: 70,
              )),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 130,
                decoration: const BoxDecoration(color: Color(0xffc8c9ce)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/ICONO-INICIO.png'),
                      width: 130,
                    ),
                    Image(
                        image: AssetImage('assets/images/ICONO-CAMPANA.png'),
                        width: 40)
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: const BoxDecoration(color: Color(0xffff7c05)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isMenuOpen = !_isMenuOpen; // Cambiar el estado del menú
                        });
                      },
                      child: Image(
                        image: AssetImage('assets/images/ICONO-MENU.png'),
                        width: 25,
                      ),
                    )
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                    height: 210.0, viewportFraction: 1, autoPlay: true),
                items: [
                  'assets/images/BANNER-1.png',
                  'assets/images/BANNER-2.png',
                  'assets/images/BANNER-3 .png',
                  'assets/images/BANNER-4.png',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            i,
                            fit: BoxFit.cover,
                          ));
                    },
                  );
                }).toList(),
              ),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/BACK-S.png'),
                        fit: BoxFit.fitHeight)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            const Image(image: AssetImage('assets/iconos/ICONO-VERIFICAR-AUTENTICIDAD-MENU.png'), width: 100,),
                            Container(
                              alignment: Alignment.center,
                              width: 100,
                              child: const Text(
                                'VERIFICAR\nAUTENTICIDAD',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'STIHL',
                                    fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Image(image: AssetImage('assets/iconos/ICONO-DISTRIBUIDOR-MAS-CERCANO.png'), width: 100,),
                            Container(
                              alignment: Alignment.center,
                              width: 100,
                              child: const Text(
                                'DISTRIBUIDOR\nMAS CERCANO',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'STIHL',
                                    fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Image(image: AssetImage('assets/iconos/ICONO-SERVICIO-TECNICO-MAS-CERCANO.png'), width: 100,),
                            Container(
                              alignment: Alignment.center,
                              width: 110,
                              child: const Text(
                                'SERVICIO TECNICO',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'STIHL',
                                    fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image(image: AssetImage('assets/iconos/ICONO-CATALOGO-DE-PRODUCTOS.png'), width: 100,),
                            Container(
                              alignment: Alignment.center,
                              width: 110,
                              child: const Text(
                                'CATALOGOS DE PRODUCTOS',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'STIHL',
                                    fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image(image: AssetImage('assets/iconos/ICONO-ASESOR-DE-MAQUINAS.png'), width: 100,),
                            Container(
                              alignment: Alignment.center,
                              width: 110,
                              child: const Text(
                                'ASESOR DE MAQUINAS',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'STIHL',
                                    fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Image(image: AssetImage('assets/iconos/ICONO-MI-COLECCION-STIHL.png'), width: 100,),
                            Container(
                              alignment: Alignment.center,
                              width: 110,
                              child: const Text(
                                'MI COLECCION\n STIHL',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'STIHL',
                                    fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width,
                color: const Color(0xfff37a1f),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(),
                    Icon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.white,
                    ),
                    Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                    ),
                    SizedBox(),
                    SizedBox(),
                    Image(
                      image: AssetImage('assets/iconos/ICONO-WEB.png'),
                      width: 37,
                    ),
                    Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                    ),
                    SizedBox(),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(color: Color(0xffc7c9cd)),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 37),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage('assets/iconos/ICONO-INICIO.png'), width: 30,),
                      Image(image: AssetImage('assets/iconos/ICONO-CONTACTANOS.png'), width: 80,)
                    ],
                  ),
                ),
              )
            ],
          ),
          // Menú desplegable
          Positioned(
            top: 180, // Ajusta la posición vertical (debajo de la barra de menú)
            right: 0, // Ajusta la posición horizontal
            child: _isMenuOpen
                ? Material(
                    color: Colors.white,
                    elevation: 4,
                    borderRadius: BorderRadius.circular(0),
                    child: SizedBox(
                      width: 210,
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: const Row(
                                children: [
                                   Image(image: AssetImage('assets/images/ICONO-AUTENTICIDAD-MENU.png'), width: 30,),
                                   SizedBox(width: 10),
                                  SizedBox( width: 150, child: Text('VERIFICAR AUTENTICIDAD', style: TextStyle(fontWeight: FontWeight.w800, fontFamily: 'STIHL', fontSize: 12),)),  
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/verificar-autenticidad');
                            },
                          ),
                        GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: const Row(
                                children: [
                                  Image(image: AssetImage('assets/images/ICONO-DISTRIBUIDOR-MENU-.png'), width: 30,),
                                  SizedBox(width: 10),
                                  SizedBox( width: 150, child: Text('DISTRIBUIDOR MAS CERCANO', style: TextStyle(fontWeight: FontWeight.w800, fontFamily: 'STIHL', fontSize: 12),)),  
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/verificar-autenticidad');
                            },
                          ),
                        GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: const Row(
                                children: [
                                  Image(image: AssetImage('assets/images/ICONO-SERVICIO-TECNICO-MENU.png'), width: 30,),
                                  SizedBox(width: 10),
                                  SizedBox( width: 150, child: Text('SERVICIO TECNICO MAS CERCANO', style: TextStyle(fontWeight: FontWeight.w800, fontFamily: 'STIHL', fontSize: 12),)),  
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/verificar-autenticidad');
                            },
                          ),
                        GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: const Row(
                                children: [
                                  Image(image: AssetImage('assets/images/ICONO-CATALOGO-MENU.png'), width: 30,),
                                  SizedBox(width: 10),
                                  SizedBox( width: 150, child: Text('CATALOGOS DE PRODUCTOS', style: TextStyle(fontWeight: FontWeight.w800, fontFamily: 'STIHL', fontSize: 12),)),  
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/verificar-autenticidad');
                            },
                          ),
                           GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: const Row(
                                children: [
                                  Image(image: AssetImage('assets/images/ICONO-ASESOR-MENU.png'), width: 30,),
                                  SizedBox(width: 10),
                                  SizedBox( width: 150, child: Text('ASESOR DE PRODUCTOS', style: TextStyle(fontWeight: FontWeight.w800, fontFamily: 'STIHL', fontSize: 12),)),  
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/verificar-autenticidad');
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: const Row(
                                children: [
                                  Image(image: AssetImage('assets/images/ICONO-MI-COLECCION-MENU.png'), width: 30,),
                                  SizedBox(width: 10),
                                  SizedBox( width: 150, child: Text('MI COLECCION STIHL', style: TextStyle(fontWeight: FontWeight.w800, fontFamily: 'STIHL', fontSize: 12),)),  
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/verificar-autenticidad');
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: const Row(
                                children: [
                                  Image(image: AssetImage('assets/images/ICONO-MI-PERFIL-MENU.png'), width: 30,),
                                  SizedBox(width: 10),
                                  SizedBox( width: 150, child: Text('MI PERFIL STIHL', style: TextStyle(fontWeight: FontWeight.w800, fontFamily: 'STIHL', fontSize: 12),)),  
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/verificar-autenticidad');
                            },
                          ),
                         GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: const Row(
                                children: [
                                  Image(image: AssetImage('assets/images/ICONO-PROMOCIONES-MENU.png'), width: 30,),
                                  SizedBox(width: 10),
                                  SizedBox( width: 150, child: Text('PROMOCIONES', style: TextStyle(fontWeight: FontWeight.w800, fontFamily: 'STIHL', fontSize: 12),)),  
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/verificar-autenticidad');
                            },
                          ),
                                                 GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: const Row(
                                children: [
                                  Image(image: AssetImage('assets/images/ICONO-SEGURO-MENU.png'), width: 30,),
                                  SizedBox(width: 10),
                                  SizedBox( width: 150, child: Text('SEGURO CONTRA ROBOS', style: TextStyle(fontWeight: FontWeight.w800, fontFamily: 'STIHL', fontSize: 12),)),  
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/verificar-autenticidad');
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                : SizedBox.shrink(), // Ocultar el menú cuando está cerrado
          )
        ],
      ),
    );
  }
}
