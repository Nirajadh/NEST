import 'package:flutter/material.dart';
import 'package:social_media/mybutton.dart';
import 'package:social_media/mytextfield.dart';

class Loginpage extends StatelessWidget {
  final void Function()? ontap;
  const Loginpage({super.key , required this.ontap});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person,
                  size: 80,
                  color: Theme.of(context).colorScheme.inverseSurface),
              const SizedBox(
                height: 15,
              ),
              Text(
                'N E S T',
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(
                height: 40,
              ),
              Mytextfield(
                  hintText: 'Email',
                  controller: emailcontroller,
                  obscureText: false),
              const SizedBox(
                height: 10,
              ),
              Mytextfield(
                  hintText: 'Password',
                  controller: passwordcontroller,
                  obscureText: true),
                     const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot password?',
                    style: TextStyle(
                        fontSize: 10,
                        color: Theme.of(context).colorScheme.secondary),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              MyButton(text: 'Sign in', ontap: () {}),
                const SizedBox(
                height: 12,
              ),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? ",style: TextStyle(fontSize: 12),),
                    GestureDetector(
                      onTap: 
                        ontap,
                      
                      child: const Text("Register Here",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),)),
                ],
              ),
              
            
            ],
          ),
        ),
      ),
    );
  }
}