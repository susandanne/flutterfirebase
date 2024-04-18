import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterfirebase/firebase_options.dart';
import 'package:flutterfirebase/movieListscreens.dart';

 Future<void> main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
   );
  runApp(const Movies());
}

class Movies extends StatelessWidget {
  const Movies({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'firebase application',
      theme: ThemeData(
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      ),
      home:const movieList(),

    );
  }
}



