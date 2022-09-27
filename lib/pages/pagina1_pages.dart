import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/pages/pagina2_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/usuario.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //inyeccion de dependencia en el context
    final usuarioCtrl = Get.put(UsuarioController());
    return Scaffold(
      appBar: AppBar(title: const Text('Pagina1Page')),
      body: Obx(() => usuarioCtrl.existeUsuario.value
          ? InformacionUsuario(usuario: usuarioCtrl.usuario.value,)
          : const NoInfo()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () {
          //Navigator.pushNamed(context, 'pagina2');
          //Get.to(const Pagina2Page());
          Get.toNamed('pagina2', arguments: {'nombre': 'Brenda', 'edad': 31});
        },
      ),
    );
  }
}

class NoInfo extends StatelessWidget {
  const NoInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No hay un usuario seleccionario'),
    );
  }
}

class InformacionUsuario extends StatelessWidget {

  final Usuario usuario;

  const InformacionUsuario({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Nombre: ${this.usuario.nombre}'),
          ),
          ListTile(
            title: Text('Edad: ${this.usuario.edad}'),
          ),
          Text(
            'Profesiones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ...usuario.profesiones.map((profesion) => ListTile(title: Text(profesion),))
        ],
      ),
    );
  }
}
