import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Firestoredatabase {
  User? user = FirebaseAuth.instance.currentUser;
  final CollectionReference posts =
      FirebaseFirestore.instance.collection('posts');
  Future<void> addpost(String message) {
    return posts.add({
      'email': user!.email,
      'post': message,
      'timestamp': Timestamp.now(),
    });
  }



}
