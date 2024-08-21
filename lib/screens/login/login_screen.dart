/// @author: Roy Hidalgo <royhidalgo1403@gmail.com>
/// @version: 1.0
/// Controladores y logica para el Login
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/BACK-1.png'))),
          Center(
            child: Container(
              width:340,
              height: 440,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(202, 255, 255, 255)),
              child: Stack(
                children: [
                  Align(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(
                              left: 20, top: 20, right: 10),
                              child: const Image(
                                width: 250,
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/TEXTO-BIENVENIDO.png'))                        
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(20),
                                    width: 120,
                                    height: 60,
                                    child: const Text(
                                      'USUARIO',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 10,fontFamily: 'STIHL'),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 35,
                                          color: Colors
                                              .grey, // Color de fondo gris
                                          child: const TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintStyle: TextStyle(
                                                  color: Colors.black),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.orange,
                                                    width: 2.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.orange,
                                                    width: 2.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                            height:
                                                5), // Espacio entre el TextField y el texto
                                        const Text(
                                          'Ingrese su crreo electrónico registrados',
                                          style: TextStyle(fontSize: 10,fontFamily: 'STIHL'),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(20),
                                    width: 120,
                                    height: 60,
                                    child: const Text(
                                      'CONTRASEÑA',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,fontFamily: 'STIHL'),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 35,
                                          color: Colors.grey,
                                          child: TextField(
                                            controller: _passwordController,
                                            obscureText:
                                                !_isPasswordVisible, // Mostrar u ocultar la contraseña según el estado
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintStyle: const TextStyle(
                                                    color: Colors.black),
                                                enabledBorder:
                                                    const UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.orange,
                                                      width: 2.0),
                                                ),
                                                focusedBorder:
                                                    const UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.orange,
                                                      width: 2.0),
                                                ),
                                                suffixIcon: GestureDetector(
                                                  child: Icon(
                                                    _isPasswordVisible
                                                        // ignore: dead_code
                                                        ? Icons.visibility
                                                        : Icons.visibility_off,
                                                    color: const Color.fromARGB(
                                                        255, 68, 66, 66),
                                                  ),
                                                  onTap: () {
                                                    setState(() {
                                                      _isPasswordVisible =
                                                          !_isPasswordVisible;
                                                      print(
                                                          "LA VARIBALE ES $_isPasswordVisible");
                                                    });
                                                  },
                                                )),
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        const Text(
                                          'Por favor ingrese su contraseña',
                                          style: TextStyle(fontSize: 10,fontFamily: 'STIHL'),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                Positioned(
                  right: 0,
                  bottom: 70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
      Navigator.pushReplacementNamed(context, '/animacion');
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                                right: 20, bottom: 20),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            decoration: const BoxDecoration(
                              color: Color(0xffED7A1F),
                            ),
                            child: const Text(
                              'INICIAR SESIÓN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,fontFamily: 'STIHL'),
                            ),
                          ),
                        ),
                      ),
                       Container(                                              
                       alignment: Alignment.bottomRight,
                         padding: const EdgeInsets.only(right: 20),
                         child: Row(
                           children: [
                             const Text('Si no tienes una cuenta, ',style: TextStyle(fontFamily: 'STIHL',fontWeight: FontWeight.bold),),
                             GestureDetector(
                               onTap: (){
                                  Navigator.pushReplacementNamed(context, '/registrar');
                               },
                               child: const Text(
                                 'REGÍSTRATE',
                                 style: TextStyle(
                                     color: Colors.orange,
                                     fontWeight: FontWeight.w900),
                               ),
                             ),
                           ],
                         ),
                       ),
                         const SizedBox(height: 10,),
                 GestureDetector(
                            onTap: () {
  
                            },
                            child: Container(
                         
                            alignment: Alignment.bottomRight,
                              padding: const EdgeInsets.only(right: 20),
                              child: const Text(
                                'RESTABLECER CONTRASEÑA',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),                        
                         ),
                    ],
                  ),
                ),     
                                                             
                    const Positioned(
                             
                      bottom:0,
                      child: SizedBox(
                        width: 350,
                        child:
                            Image(image: AssetImage('assets/images/bandera.png')),
                      ),
                    )                    
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}