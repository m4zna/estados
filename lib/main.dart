import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/pages/pagina1_pages.dart';
import 'package:estados/pages/pagina2_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UsuarioCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: 'pagina1',
        routes: {
          'pagina1' : (_)=>Pagina1Page(),
          'pagina2' : (_)=>Pagina2Page(),
        },
      ),
    );
  }
}

