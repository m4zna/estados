import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/usuario.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioCubit = context.read<UsuarioCubit>();
    return Scaffold(
        appBar: AppBar(title: const Text('Pagina2Page')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  child: const Text(
                    'Establecer usuario',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    final newUser = Usuario(
                        nombre: 'Brenda Osorio',
                        edad: 31,
                        profesiones: ['estudiante', 'trabajador']);
                    usuarioCubit.seleccionarUsuario(newUser);
                  }),
              MaterialButton(
                  child: const Text(
                    'Cambiar Edad',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    usuarioCubit.cambiarEdad(35);
                  }),
              MaterialButton(
                  child: const Text(
                    'Añadir Profesion',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {usuarioCubit.agregarProfesion();}),
            ],
          ),
        ));
  }
}
