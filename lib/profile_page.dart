import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_media/mybackbutton.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

User? currentuser = FirebaseAuth.instance.currentUser;
Future <DocumentSnapshot<Map<String,dynamic>>> getuserdetails() async{

return FirebaseFirestore.instance.collection('users').doc(currentuser!.email).get() ;
}

    return  Scaffold(
   
      body: FutureBuilder(future: getuserdetails(), builder: (context,snapshot){

       
       if (snapshot.connectionState== ConnectionState.waiting) {
        print('waiting');
         return const Center(child: CircularProgressIndicator(),);
       }
      else if (snapshot.hasError) {
         return const Text('error');
       }


        else if (snapshot.hasData) {
           Map<String,dynamic>? user = snapshot.data!.data();
        return
        Center(
          child: Column(

         
            children: [
            const  Row(children: [Padding(
                padding:  EdgeInsets.all(8.0),
                child: Mybackbutton(),
              )],),
             const SizedBox(height: 20,),
              Container(
              
                decoration:  BoxDecoration(
                
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(24),
                  
                ),
                padding:const EdgeInsets.all(24),
                child: const Icon(Icons.person,size: 55,),
              ),
              const SizedBox(height: 15,),
              Text(user!['username'],style: const TextStyle(fontWeight:FontWeight.bold, fontSize: 24),),
                const SizedBox(height: 8,),
            Text(user['email'],style:  TextStyle(fontWeight:FontWeight.normal, fontSize: 12,color:Theme.of(context).hintColor ),),
            ],
          ),
        );}
else return const Text('no data');

      }),

      
    );
  }
}