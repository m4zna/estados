import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
            title: usuarioService.existeUsuario
                ? Text('Nombre : ${usuarioService.usuario.nombre}')
                : Text('Pagina2')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    final newUser = Usuario(nombre: 'Brenda Osorio', edad: 31,profesiones: ['Developer', 'Jugador']);
                    usuarioService.usuario = newUser;
                  },
                  child: const Text(
                    'Establecer usuario',
                    style: TextStyle(color: Colors.white),
                  )),
              MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    usuarioService.cambiarEdad(35);
                  },
                  child: const Text(
                    'Cambiar Edad',
                    style: TextStyle(color: Colors.white),
                  )),
              MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    usuarioService.agregarProfesion();
                  },
                  child: const Text(
                    'Añadir Profesion',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ));
  }
}
