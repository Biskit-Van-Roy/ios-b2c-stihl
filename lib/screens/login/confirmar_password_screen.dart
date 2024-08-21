import 'package:flutter/material.dart';

class ConfirmarPasswordScreen extends StatefulWidget {
  const ConfirmarPasswordScreen({super.key});

  @override
  State<ConfirmarPasswordScreen> createState() => _ConfirmarPasswordScreenState();
}

class _ConfirmarPasswordScreenState extends State<ConfirmarPasswordScreen> {
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
                          'assets/images/BACK-3.png'))),
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
                              left: 20, top: 30, right: 10),
                              child: const Image(
                                width: 250,
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/TEXTO-GENERAR-CONTRASENA.png'))                        
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
                                    height: 71,
                                    child: const Text(
                                      'INGRESAR CONTRASEÑA',
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
                       
                                        const Text(
                                          'Mayúsculas, minúsculas, y números \n(8 caracteres)',
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
                                    height: 70,
                                    child: const Text(
                                      'CONFIRMAR CONTRASEÑA',
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
                                  
                                       
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                       
                
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                Positioned(
                  right: 0,
                  bottom: 60,
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