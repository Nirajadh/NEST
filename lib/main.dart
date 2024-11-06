import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_media/auth.dart';

import 'package:social_media/firebase_options.dart';
import 'package:social_media/homepage.dart';
import 'package:social_media/loginorregister.dart';
import 'package:social_media/profile_page.dart';


import 'package:social_media/themes/darkmode.dart';
import 'package:social_media/themes/lightmode.dart';
import 'package:social_media/users_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MainApp());
  
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      home:const Auth(),
      theme: lightmode,
      darkTheme: darkmode,
      routes: {
'/userspage':(context)=>const UsersPage(),
'/homepage':(context)=>const Homepage(),
'/profilepage':(context)=>const ProfilePage(),
'/LoginandRegister_page':(context)=>const loginorregister(),

      },
      

    );
  }
}
