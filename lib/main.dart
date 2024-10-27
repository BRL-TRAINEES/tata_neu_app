import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tata_neu/firebase/lottie/lottie.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();  // Ensures Flutter bindings are initialized
  await Firebase.initializeApp();  // Initializes Firebase

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth App',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: SplashScreen(),
    );
  }
}
