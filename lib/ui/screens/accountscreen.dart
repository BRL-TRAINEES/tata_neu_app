import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:tata_neu/firebase/loginservices.dart/Login.dart';

class Accountscreen extends StatelessWidget {
  const Accountscreen({super.key});

  void logout(BuildContext context) async {
    {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() =>  LoginPage()); 
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Screen'),
        centerTitle: true,
      ),
      body: Center(
        
          child: 
            
            ElevatedButton(
              onPressed: () => logout(context),
              child: const Text('Logout'),
              
              
               
          
            ),
      ),
        );
      
    
  }
}
