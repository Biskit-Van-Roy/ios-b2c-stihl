/// @author: Roy Hidalgo <royhidalgo1403@gmail.com>
/// @version: 1.0
/// Pantalla de bienvenida
import 'package:flutter/material.dart';

class BienvenidaScreen extends StatefulWidget {
  const BienvenidaScreen({super.key});

  @override
  State<BienvenidaScreen> createState() => _BienvenidaScreenState();
}

class _BienvenidaScreenState extends State<BienvenidaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
           Navigator.pushReplacementNamed(context, '/login');
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color(0xffff7c05)],
              stops: [0.5, 0.5],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: MediaQuery.of(context).size.height / 2 + 50,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'ECUADOR',
                      style: TextStyle(
                          fontFamily: 'STIHL',
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          fontSize: 50),
                    ),
                    Container(
                      width: 40,
                      height: 10,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            Positioned(
                top: MediaQuery.of(context).size.height/2-40,
                left: -10,
                child: Image(image: const AssetImage('assets/images/BANDERA-EC.png'),width: MediaQuery.of(context).size.width,),
              ),
              const Positioned(
                bottom: 40,
                right: 30,
                child: Image(image: AssetImage('assets/images/LOGO-STIHL-BLANCO.png'),width: 150,)
              ),
            ],
          ),
        ),
      ),
    );
  }
}