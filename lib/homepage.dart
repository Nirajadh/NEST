import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
   actions: [Padding(
     padding: const EdgeInsets.all(8.0),
     child: GestureDetector (
      onTap: ()async{await FirebaseAuth.instance.signOut();},
      
      child: Icon(Icons.logout)),
   )]
    ),);
  }
}