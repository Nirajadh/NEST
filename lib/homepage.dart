
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:social_media/firestoredatabase.dart';
import 'package:social_media/myDrawer.dart';
import 'package:social_media/mypostbutton.dart';
import 'package:social_media/mytextfield.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
  TextEditingController postcontroller =TextEditingController();
  Firestoredatabase database = Firestoredatabase();
    return Scaffold(appBar: AppBar(
    backgroundColor: Colors.transparent,


  
   title: const  Text ( "Home"),
centerTitle: true,

    ),
    drawer: Mydrawer(),
    body:
 Column(children: [
 
       Padding(
         padding: const EdgeInsets.all(20.0),
         child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Mytextfield(hintText: "Say Something...", controller: postcontroller, obscureText: false)),
             
             Mypostbutton(ontap:(){database.addpost(postcontroller.text);
             postcontroller.clear();
             }),
              ],
          
            ),
       ),
 Expanded(
   child: StreamBuilder(stream: FirebaseFirestore.instance.collection('posts').orderBy('timestamp',descending: true).snapshots(), builder: (context,snapshot){
 
   
  if (snapshot.connectionState== ConnectionState.waiting) {
    print('waiting');
         return const Center(child: CircularProgressIndicator(),);
       }
  else if (snapshot.hasError) {
         return const Text('error');
       }
   else if (snapshot.hasData) {
  
     final posts = snapshot.data!.docs;
  return ListView.builder(
  itemCount : posts.length,
    itemBuilder: (context,item){
      return Padding(
        padding: const EdgeInsets.fromLTRB(5,5,10,0),
        child: ListTile(title: Text(  posts[item]['post'],),
        subtitleTextStyle: TextStyle(fontSize: 12,color: Theme.of(context).highlightColor),
            
        subtitle: Text( posts[item]['email']),),
      );
    });
   }
   
   
   else return const Text('no data');
   
   }),
 )
 
 
        ]
      ),
  
      



 
    
     );
  }
}