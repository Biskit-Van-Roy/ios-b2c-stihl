import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LogOutScreen extends StatefulWidget {
  const LogOutScreen({super.key});

  @override
  State<LogOutScreen> createState() => _LogOutScreenState();
}

class _LogOutScreenState extends State<LogOutScreen> {
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
          onPressed: () {},
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
                  height: 120,
                  decoration: const BoxDecoration(color: Color(0xffc8c9ce)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/CERRAR-SESION.png'),
                        width: 220,
                      ),
                      Image(
                          image: AssetImage('assets/images/ICONO-CAMPANA.png'),
                          width: 30)
                    ],
                  ),
                ),
                   Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: const BoxDecoration(color: Color(0xffff7c05)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image(
                        image: AssetImage('assets/images/ICONO-MENU.png'),
                        width: 30,
                      )
                    ],
                  ),
                ),
                Expanded(child: Column(
                  children: [
                    const SizedBox(height: 20,),
                  
                  ],
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
                        Image(image: AssetImage('assets/iconos/ICONO-INICIO.png'),width: 30,),
                        Image(image: AssetImage('assets/iconos/ICONO-CONTACTANOS.png'),width: 80,)
                      ],
                    ),
                  ),
                )
              ],
              
            ),
        ],
      ),
    );
  }
}