import 'package:flutter/material.dart';
import 'package:login_app_3/Objeto/Usuario_obj.dart';

class HomeScreen extends StatelessWidget {
  static var name;
  Usuario usuario;
  HomeScreen({super.key,required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Email: ${usuario.nameUser}'),
            Text('Dirección: ${usuario.direccion}'),
          ],
        ),
      ),
    );
  }
}