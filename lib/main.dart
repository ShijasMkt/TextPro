import 'package:flutter/material.dart';
//import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:textpro/pages/acronym.dart';
import 'package:textpro/pages/alliteration.dart';
import 'package:textpro/pages/chain.dart';
import 'package:textpro/pages/explode.dart';
import 'package:textpro/pages/fuse.dart';
import 'package:textpro/pages/pov.dart';
import 'package:textpro/pages/scene.dart';
import 'package:textpro/pages/unexpect.dart';
import 'package:textpro/pages/unfold.dart';
import 'pages/home.dart';
import 'pages/simile.dart';





void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final apiKey = "AIzaSyC3FNTd8ZakC0ILy8NW3zq75ppOyzoidrY";

  
   

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        useMaterial3: true,
      ),
      routes: {
        '/':(context) => const home(),
        '/simile':(context)=> const simile(),
        '/scene':(context) => const scene(),
        '/unfold':(context) => const unfold(),
        '/acronym':(context) => const acronym(),
        '/fuse':(context) => const fuse(),
        '/pov':(context) => const pov(),
        '/alliteration':(context) => const alliteration(),
        '/chain':(context) => const chain(),
        '/unexpect':(context) => const unexpect(),
        '/explode':(context) => const explode(),
      },
      
      initialRoute: '/',
    );
  }
}

