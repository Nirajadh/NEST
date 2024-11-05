import 'package:flutter/material.dart';
import 'package:social_media/Register_page.dart';
import 'package:social_media/authentication.dart';
import 'package:social_media/login_page.dart';
import 'package:social_media/themes/darkmode.dart';
import 'package:social_media/themes/lightmode.dart';

void main() {
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
      

    );
  }
}
