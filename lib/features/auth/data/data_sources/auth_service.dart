import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/sign_up_model.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(GymUserModel user);

  Future<Either> choosePlan(String plan) async {
    User? user = FirebaseAuth.instance.currentUser;
    String uid = user!.uid;

    try {
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(uid)
          .update({'plan': plan});
      return const Right('Document updated successfully!');
    } catch (e) {
      return Left('Error updating document: $e');
    }
  }
}

class AuthFirebaseServiceImp extends AuthFirebaseService {
  @override
  Future<Either> signup(GymUserModel user) async {
    try {
      print("email is ${user.email} password is ${user.password}");
      var returnedData = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: user.email, password: user.password);

      FirebaseFirestore.instance
          .collection('Users')
          .doc(returnedData.user!.uid)
          .set(user.toJson());

      return const Right('Sign up successfully');
    } on FirebaseAuthException catch (e) {
      String message = '';
      print(">>>>>>>>>>>>>>>>>>>>>${e.code}<<<<<<<<<<<<<<<<<<<<<<<<<");
      print(">>>>>>>>>>>>>>>>>>>>>${e.message}<<<<<<<<<<<<<<<<<<<<<<<<<");

      if (e.code == 'weak-password') {
        message = 'The password provided is too weak';
        print(">>>>>>>>>>>>>>>>>>>>>$message<<<<<<<<<<<<<<<<<<<<<<<<<");
      } else if (e.code == 'email-already-in-use') {
        message = 'This email already exists';
        print(">>>>>>>>>>>>>>>>>>>>>$message<<<<<<<<<<<<<<<<<<<<<<<<<");
      }

      return Left(message);
    }
  }

  @override
  Future<Either> choosePlan(String plan) async {
    User? user = FirebaseAuth.instance.currentUser;
    String uid = user!.uid;

    try {
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(uid)
          .update({'plan': plan});
      return const Right('Document updated successfully!');
    } catch (e) {
      return Left('Error updating document: $e');
    }
  }
}
