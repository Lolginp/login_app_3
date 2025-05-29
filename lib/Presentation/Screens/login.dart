import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String name = 'login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController inputControllerC = TextEditingController();

  TextEditingController inputControllerU = TextEditingController();

  String inputContra = '';

  String inputUsuar = '';

  IconData visible = Icons.visibility;

  IconData novisible = Icons.visibility_off;

  bool contrasenanovis = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: inputControllerU,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Usuario',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: inputControllerC,
                  decoration: InputDecoration(
                    border:const OutlineInputBorder(),
                    labelText: 'Contraseña',
                    suffixIcon: IconButton(               //Esto permite agregar dentro del text field un icono, en este caso se agrego el de visualización o no visualización. Es decri, para que el texto no se vea o si lo haga. 
                      icon: Icon(
                        contrasenanovis ? visible : novisible, // EL signo de pregunta, cuando esta puesto una vez analiza el contenido de contrasenanovis, si es true entocnes dejara al icono como visible. En caso contrario dejara al icono como novisible.
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          contrasenanovis = !contrasenanovis;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(                       //Boton de ingreso, depende de cual sea la infromación que le entre de los inputController, este enviara un mensaje de ingreso correcto o de ingreso incorrectos
                onPressed: () {
                  setState(() {
                    inputContra = inputControllerC.text;
                    inputUsuar = inputControllerU.text;
                    if (inputContra == 'contraseña' && inputUsuar == 'lolo') {

                    } else {

                    }
                  });
                }
              )
            ],
        ),
    ),
    );
  }
}