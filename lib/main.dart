
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iosb2c/screens/home/home_screen.dart';
import 'package:iosb2c/screens/login/animacion_screen.dart';
import 'package:iosb2c/screens/login/confirmar_password_screen.dart';
import 'package:iosb2c/screens/login/login_screen.dart';
import 'package:iosb2c/screens/login/register_screen.dart';
import 'package:iosb2c/screens/logout/logout_screen.dart';
import 'package:iosb2c/screens/profile/perfil_screen.dart';
import 'package:iosb2c/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]) .then((_) { runApp(const MyApp()); });

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B2C STIHL',
      initialRoute: '/',
      routes: {
        '/': (context) => const BienvenidaScreen(),
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/registrar': (context) => const RegistrarScreen(),
        '/confirmarPassword': (context) => const ConfirmarPasswordScreen(),
        '/animacion': (context) => const AnimacionPage(),
        '/perfil': (context) => const PerfilScreen(),
        '/logout': (context) => const LogOutScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      },
    );
  }
}