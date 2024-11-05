import 'package:flutter/material.dart';
import 'package:social_media/Register_page.dart';
import 'package:social_media/login_page.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
bool showloginpage = true;

  void togglepages(){
    setState(() {
      showloginpage = !showloginpage ;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showloginpage) {
      return Loginpage(ontap: togglepages);
    }
   else{
      return RegisterPage(ontap: togglepages);
   }
  }
}