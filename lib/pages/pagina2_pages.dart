import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print(Get.arguments);

    final usuarioCtrl = Get.find<UsuarioController>();

    return Scaffold(
        appBar: AppBar(title: const Text('Pagina2Page')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  child: Text(
                    'Establecer usuario',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    usuarioCtrl.cargarUsuario(
                        Usuario(nombre: 'Brenda Osorio', edad: 31));
                    Get.snackbar('Usuario establecido', 'Brenda',
                        backgroundColor: Colors.white,
                        boxShadows: [
                          BoxShadow(color: Colors.black38, blurRadius: 10)
                        ]);
                  }),
              MaterialButton(
                  child: Text(
                    'Cambiar Edad',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    usuarioCtrl.cambiarEdad(25);
                  }),
              MaterialButton(
                  child: Text(
                    'Añadir Profesion',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    usuarioCtrl.agregarProfesion(
                        'Profesion #${usuarioCtrl.profesionesCount + 1}');
                  }),

              MaterialButton(
                  child: Text(
                    'Cambiar Tema',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                   Get.changeTheme(Get.isDarkMode ? ThemeData.light():ThemeData.dark());
                  }),
            ],
          ),
        ));
  }
}
