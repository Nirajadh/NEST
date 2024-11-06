import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_media/myDrawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(appBar: AppBar(
    backgroundColor: Theme.of(context).highlightColor,


  
   title: Center(child: Text ( "Home")),


    ),
    drawer: Mydrawer(),
    
    );
  }
}