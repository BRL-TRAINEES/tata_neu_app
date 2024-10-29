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

  Widget build(BuildContext context) {  //builder build the screen UI according to the user authentication process
    return Scaffold(
      body: StreamBuilder(   //StreamBuilder are powerful widgets that we mostly used with firebase that builds the UI that reacts to changes in data
        stream: FirebaseAuth.instance.authStateChanges(),  //in streambuilder : sink is input and stream is output
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.emailVerified) {
              return Home();
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

//! in dart used to indicates that data is not null