/// @author: Roy Hidalgo <royhidalgo1403@gmail.com>
/// @version: 1.0
/// Controladores y logica para registro de usuarios
import 'package:flutter/material.dart';

class RegistrarScreen extends StatefulWidget {
  const RegistrarScreen({super.key});

  @override
  State<RegistrarScreen> createState() => _RegistrarScreenState();
}

class MenuItem {
  final int id;
  final String label;
  MenuItem(this.id, this.label);
}

List<MenuItem> menuItems = [
  MenuItem(1, 'PICHINCHA'),
  MenuItem(2, 'GUAYAQUIL'),
  MenuItem(3, 'CUENCA'),
];

class _RegistrarScreenState extends State<RegistrarScreen> {
  @override
    String? _selectedValue;
  bool _isPasswordVisible = false;
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController apellidoController = TextEditingController();
  final TextEditingController correoController = TextEditingController();
  final TextEditingController celularController = TextEditingController();
  final TextEditingController ciudadController = TextEditingController();
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 16.0;
    final TextEditingController menuController = TextEditingController();

    MenuItem? selectedMenu;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height + 20,
                child: const Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/BACK-2.png'))),
            Center(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 830,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(202, 255, 255, 255),
                    ),
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
                                      width: 200,
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/TEXTO-REGISTRO.png'))),
                              const SizedBox(
                                height: 10,
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
                                            'NOMBRE',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 12,
                                                fontFamily: 'STIHL'),
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
                                                child: TextField(
                                                  decoration: const InputDecoration(
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
                                                  controller: nombreController,
                                                ),
                                              ),
                                              const SizedBox(
                                                  height:
                                                      5), // Espacio entre el TextField y el texto
                                              const Text(
                                                'Ingrese su nombre',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'STIHL'),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(20),
                                          width: 120,
                                          height: 60,
                                          child: const Text(
                                            'APELLIDO',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 12,
                                                fontFamily: 'STIHL'),
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
                                                child: TextField(
                                                  decoration: const InputDecoration(
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
                                                  controller: apellidoController,
                                                ),
                                              ),
                                              const SizedBox(
                                                  height:
                                                      5), // Espacio entre el TextField y el texto
                                              const Text(
                                                'Ingrese su apellido',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'STIHL'),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(20),
                                          width: 120,
                                          height: 60,
                                          child: const Text(
                                            'E-MAIL',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 12,
                                                fontFamily: 'STIHL'),
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
                                                child:  TextField(
                                                  decoration: const InputDecoration(
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
                                                  controller: correoController,
                                                ),
                                              ),
                                              const SizedBox(
                                                  height:
                                                      5), // Espacio entre el TextField y el texto
                                              const Text(
                                                'Ingrese su correo',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'STIHL'),
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
                                            'CELULAR',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 12,
                                                fontFamily: 'STIHL'),
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
                                                child:  TextField(
                                                  decoration: const InputDecoration(
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
                                                  controller: celularController,
                                                ),
                                              ),
                                              const SizedBox(
                                                  height:
                                                      5), // Espacio entre el TextField y el texto
                                              const Text(
                                                'Ingrese su celular',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'STIHL'),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(20),
                                          width: 120,
                                          height: 60,
                                          child: const Text(
                                            'PROVINCIA',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 12,
                                                fontFamily: 'STIHL'),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                                height: 40,
                                                width: double.infinity, // Ocupa todo el ancho disponible
                                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                                decoration: const BoxDecoration(
                                                  color: Colors.grey, // Fondo gris
                                                  border: Border(
                                                    bottom: BorderSide(
                                                      color: Colors.orange, // Línea naranja en el fondo
                                                      width: 2, // Grosor de la línea
                                                    ),
                                                  ),
                                                ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _selectedValue,
          hint: Text('Seleccione una opción'),
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 24,
          isExpanded: true, // Para ocupar todo el ancho disponible
          style: TextStyle(color: Colors.black, fontSize: 12, fontFamily: 'STIHL'),
          onChanged: (String? newValue) {
            setState(() {
              _selectedValue = newValue;
            });
          },
          items: <String>['Pichincha', 'Guayas', 'Cuenca', 'Manabi']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    )
                                          // Container(
                                          //   height: 60,
                                          //   color: Colors
                                          //       .grey, // Color de fondo gris
                                          //   child: DropdownMenu<MenuItem>(
                                          //     textStyle: TextStyle(
                                          //       fontFamily: 'STIHL',
                                          //     ),
                                          //     menuStyle: MenuStyle(
                                          //         backgroundColor:
                                          //             WidgetStatePropertyAll<
                                          //                 Color>(Colors.grey)),
                                          //     initialSelection: menuItems.first,
                                          //     controller: menuController,
                                          //     width: 210,
                                          //     requestFocusOnTap: true,
                                          //     enableFilter: true,
                                          //     onSelected: (MenuItem? menu) {
                                          //       selectedMenu = menu;
                                          //     },
                                          //     dropdownMenuEntries: menuItems
                                          //         .map<
                                          //                 DropdownMenuEntry<
                                          //                     MenuItem>>(
                                          //             (MenuItem menu) {
                                          //       return DropdownMenuEntry<
                                          //           MenuItem>(
                                          //         value: menu,
                                          //         label: menu.label,
                                          //       );
                                          //     }).toList(),
                                          //   ),
                                          // ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(20),
                                          width: 120,
                                          height: 60,
                                          child: const Text(
                                            'CIUDAD',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 12,
                                                fontFamily: 'STIHL'),
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
                                                child: TextField(
                                                  controller: ciudadController,
                                                  decoration: const InputDecoration(
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
                                              const Text(
                                                'Ingrese la ciudad',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'STIHL'),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                height: 10,
                                thickness: 2,
                                indent: 20,
                                endIndent: 20,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: false,
                                      onChanged: null,
                                      fillColor: MaterialStateProperty
                                          .resolveWith<Color?>(
                                              (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.selected)) {
                                          return Colors
                                              .orange; // Cambia "Colors.accents" por el color que desees.
                                        }
                                        return null; // Esto significa que no hay un color de relleno cuando no está seleccionado.
                                      }),
                                    ),
                                    const SizedBox(
                                        width: 250,
                                        child: Text(
                                          'He leido y acepto la política para el tratamiento de datos personales',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'STIHL',
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15),
                                        ))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: false,
                                      onChanged: null,
                                      fillColor: MaterialStateProperty
                                          .resolveWith<Color?>(
                                              (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.selected)) {
                                          return Colors
                                              .orange; // Cambia "Colors.accents" por el color que desees.
                                        }
                                        return null; // Esto significa que no hay un color de relleno cuando no está seleccionado.
                                      }),
                                    ),
                                    const SizedBox(
                                        width: 230,
                                        child: Text(
                                          'He leido y acepto los terminos y condiciones de uso',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'STIHL',
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15),
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
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
                                     Navigator.pushReplacementNamed(context, '/confirmarPassword');
                                      },
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              right: 20, bottom: 20),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 50, vertical: 15),
                                          decoration: const BoxDecoration(
                                            color: Color(0xffED7A1F),
                                          ),
                                          child: const Text(
                                            'SIGUIENTE',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w900,
                                                fontFamily: 'STIHL'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      padding: const EdgeInsets.only(right: 20),
                                      child: const Text(
                                        '?YA TIENE UNA CUENTA?',
                                        style: TextStyle(
                                            fontFamily: 'STIHL',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                     Navigator.pushNamed(context, '/confirmarPassword');
                                      },
                                      child: Container(
                                        alignment: Alignment.bottomRight,
                                        padding:
                                            const EdgeInsets.only(right: 20),
                                        child: const Text(
                                          'INICIAR SESION',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          left: 0,
                          child: SizedBox(
                            width: 350,
                            child: Image(
                                image: AssetImage('assets/images/bandera.png')),
                          ),
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
