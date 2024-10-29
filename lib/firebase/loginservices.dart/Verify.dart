import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tata_neu/firebase/loginservices.dart/wrapper.dart';


class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {

@override
  void initState(){ 
    sendverifylink();
    super.initState();
  }

  sendverifylink()async{
    final user = FirebaseAuth.instance.currentUser!; 
    await user.sendEmailVerification().then((value)=>{ 
      Get.snackbar('Link sent','Please check! Link has been sent to you mail' , backgroundColor: Colors.white)
    });
  }

  reload()async{
    await FirebaseAuth.instance.currentUser!.reload(

    ).then((value)=>{Get.offAll(()=>Wrapper())}); 
  }

 @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Email Verification' , style: TextStyle(color: Colors.white),),
      ),
      body: Padding(padding: const EdgeInsets.all(30),
      child: Center(child: Text('click on link provided to mail for verification then click on button below to proceed',style: TextStyle(fontSize: 20 , color: Colors.black),)),
      ),
    floatingActionButton: FloatingActionButton(onPressed:reload, child:  Icon(Icons.arrow_circle_right),),
    
    );
  }
}
