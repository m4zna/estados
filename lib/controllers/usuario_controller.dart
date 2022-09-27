import 'package:get/get.dart';

import '../models/usuario.dart';

class UsuarioController extends GetxController {
  //obs---se convierten en observadores
  RxBool existeUsuario = false.obs;
  Rx<Usuario> usuario = Usuario().obs;

  int get profesionesCount{
    return usuario.value.profesiones.length;
  }

  //metodo
  void cargarUsuario(Usuario pUsuario) {
    this.existeUsuario.value = true;
    this.usuario.value = pUsuario;
  }

  void cambiarEdad(int edad) {
    this.usuario.update((val) {
      val!.edad = edad;
    });
  }

  void agregarProfesion(String profesiom){
    this.usuario.update((val) {
      //las profesiones que tenfo + la nueva profesion
      val!.profesiones = [...val.profesiones, profesiom];
    });
  }
}
