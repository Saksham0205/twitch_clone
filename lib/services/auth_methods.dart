import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:twitch_clone/models/user.dart' as model;
import 'package:twitch_clone/utils/showsnackbar.dart';
class AuthMethods {
  final _userRef = FirebaseFirestore.instance.collection("users");
  final _auth = FirebaseAuth.instance;
  Future<bool> signupWithEmail(
      BuildContext context, String email, String username, String password) async {
    bool res = false;
    try {
      UserCredential cred = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (cred.user != null) {
        model.User user = model.User(
          username: username.trim(),
          email: email.trim(),
          uid: cred.user!.uid,
        );
        await _userRef.doc(cred.user!.uid).set(user.toMap());
        res = true;
      }
    } on FirebaseAuthException catch (e) {
      showSnackbar(context, e.message ?? "An error occurred");
    }
    return res;
  }

}
