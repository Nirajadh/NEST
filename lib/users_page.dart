import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Users'),
      centerTitle: true,
      
      
      ),
      body: StreamBuilder(stream: FirebaseFirestore.instance.collection('users').snapshots(), builder: (context,snapshot){

   if (snapshot.connectionState== ConnectionState.waiting) {
         return const Center(child: CircularProgressIndicator(),);
       }
  else if (snapshot.hasError) {
         return const Text('error');
       }


else if (snapshot.hasData) {
  
final users = snapshot.data!.docs;
return ListView.builder(

  itemCount: users.length,
  
  itemBuilder: (context,item){
    final user = users[item];
    return ListTile(
      title: Text(user['username']),
      subtitle: Text(user['email']),
       subtitleTextStyle: TextStyle(fontSize: 12,color: Theme.of(context).highlightColor),
    ) ;
  });}
else return const Text('no data');

      


      }),

    );
  }
}