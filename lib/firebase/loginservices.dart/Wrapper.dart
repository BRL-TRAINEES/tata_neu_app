import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tata_neu/firebase/loginservices.dart/Home.dart';
import 'package:tata_neu/firebase/loginservices.dart/login.dart';
import 'package:tata_neu/firebase/loginservices.dart/verify.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});  // Constractor of wrapper accepts the key that identify the define widgets from widgets tree

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override

  Widget build(BuildContext context) {  
    return Scaffold(
      body: StreamBuilder(   
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.emailVerified) {
              return HomeScreen();
            } else {
              return Verify();
            }
          } else {
            return LoginPage();
          }
        },),
    );
  }
}

