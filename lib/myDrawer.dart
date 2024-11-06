import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_media/users_page.dart';
class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
  
  return Drawer(
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
       
      
      
         
          Column(
            children: [
             const  DrawerHeader(child: Icon(Icons.brightness_high_outlined )),
                ListTile(
          leading: const Icon(Icons.home),
          onTap: (){Navigator.pop(context);
          Navigator.pushNamed(context,'/homepage');
          
          },

          title:const  Text('H O M E'),),
      
              ListTile(
              leading: const Icon(Icons.person),
                onTap: (){Navigator.pop(context);
                     Navigator.pushNamed(context,'/profilepage');},
              title:  const Text('P R O F I L E'),),
                ListTile(
          leading:const Icon(Icons.group),
            onTap: (){Navigator.pop(context);
                 Navigator.pushNamed(context,'/userspage');},
          title: const Text('U S E R S'),),
            ],
          ),
      
        
      
        ListTile(
          leading:const Icon(Icons.logout),
          
          title: const Text('L O G O U T'),
       onTap: ()async {Navigator.pop(context);
      await FirebaseAuth.instance.signOut();
                 Navigator.pushNamed(context,'/LoginandRegister_page');},),
      ],),
    ),
  );
}}