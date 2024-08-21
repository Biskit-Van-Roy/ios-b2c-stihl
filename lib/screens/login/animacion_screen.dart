
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AnimacionPage extends StatefulWidget {
  const AnimacionPage({super.key});

  @override
  State<AnimacionPage> createState() => _AnimacionPageState();
}

class _AnimacionPageState extends State<AnimacionPage> {

double escala = 1.2;

  @override
  void initState() {
 
    super.initState();
     Future.delayed(Duration(seconds: 0)).then((value) => setState(() {
          escala = 1;
   print(escala);
        }));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedScale(
     scale: escala,
     
     duration: const Duration(seconds: 2),
     child: Image(      
       width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        image: const AssetImage('assets/images/BIENVENIDO-CONTINUAR.png'),fit: BoxFit.cover),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  width: 250,
                  image: AssetImage('assets/images/STIHL-SLOGAN.png'),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 25,
            right: MediaQuery.of(context).size.width / 2 - 70,
            child: BounceInUp(

              duration: Duration(seconds: 2),
              child: GestureDetector(
                onTap: 
                     () {
                    setState(() {
                      escala = 1.4;
                      print(escala);
                    });
                    Navigator.pushReplacementNamed(context, '/home');
                      },
                   
                child: const Text(
                  'CONTINUAR',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontFamily: 'STIHL',
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
