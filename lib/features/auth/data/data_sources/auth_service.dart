import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/plan_model.dart';
import '../models/sign_up_model.dart';

abstract class AuthService {
  Future<Either> signup(GymUserModel user);

  Future<Either> signIn(String email, String password);

  Future<Either> signOut();

  Future<QuerySnapshot<PlanModel>> getPlans();
}

class AuthServiceImp extends AuthService {
  @override
  Future<Either> signup(GymUserModel user) async {
    try {
      print("email is ${user.email} password is ${user.password}");
      var returnedData = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: user.email, password: user.password);

      final gymUserRef = FirebaseFirestore.instance
          .collection('Users')
          .doc(returnedData.user!.uid);

      // gymUserRef.set(user.toJson());
      // await gymUserRef.collection('Members').add({});

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
  Future<QuerySnapshot<PlanModel>> getPlans() async {
    final plansCollection =
        FirebaseFirestore.instance.collection('Plans').withConverter<PlanModel>(
              fromFirestore: (snapshot, _) =>
                  PlanModel.fromFirestore(snapshot.data()!),
              toFirestore: (plan, _) => plan.toFirestore(),
            );

    final querySnapshot = await plansCollection.get();

    return querySnapshot;
  }

  @override
  Future<Either> signIn(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return const Right('Sign in successfully');
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided for that user.';
      }
      return Left(message);
    }
  }

  @override
  Future<Either> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      return const Right('Sign out successfully');
    } on FirebaseAuthException catch (e) {
      return Left(e.message);
    }
  }
}
