import 'package:estados/pages/pagina1_pages.dart';
import 'package:estados/pages/pagina2_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'pagina1',
      /*routes: {
        'pagina1' : (_)=>Pagina1Page(),
        'pagina2' : (_)=>Pagina2Page(),
      },*/
      getPages: [
        GetPage(name: '/pagina1', page: () => Pagina1Page()),
        GetPage(name: '/pagina2', page: () => Pagina2Page())
      ],
    );
  }
}
