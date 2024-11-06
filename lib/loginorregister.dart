import 'package:flutter/material.dart';
import 'package:social_media/Register_page.dart';
import 'package:social_media/login_page.dart';

class loginorregister extends StatefulWidget {
  const loginorregister({super.key});

  @override
  State<loginorregister> createState() => _AuthState();
}

class _AuthState extends State<loginorregister> {
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