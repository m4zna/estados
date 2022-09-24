import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: StreamBuilder(
          stream: usuarioService.usuarioStream,
          builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
            return snapshot.hasData?Text('Nombre: ${snapshot.data!.nombre}'):Text('Pagina2');
          },
        )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    final nuevoUsuario = Usuario(nombre: 'Brenda', edad: 31);
                    usuarioService.cargarUsuario(nuevoUsuario);
                    //Navigator.pop(context);
                  },
                  child: const Text(
                    'Establecer usuario',
                    style: TextStyle(color: Colors.white),
                  )),
              MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    usuarioService.cambiarEdad(30);
                    //Navigator.pop(context);
                  },
                  child: const Text(
                    'Cambiar Edad',
                    style: TextStyle(color: Colors.white),
                  )),
              MaterialButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: const Text(
                    'Añadir Profesion',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ));
  }
}
