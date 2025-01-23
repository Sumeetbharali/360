import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/plan_model.dart';
import '../models/sign_up_model.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(GymUserModel user);

  Future<QuerySnapshot<PlanModel>> getPlans();
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
}
