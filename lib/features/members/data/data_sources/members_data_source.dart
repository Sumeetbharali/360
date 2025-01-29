import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/member_model.dart';

abstract class MembersDataSource {
  Future<Either<List<MemberModel>, Stream<List<MemberModel>>>> getMembers();

  Future<void> addMember(MemberModel member);

  Future<void> deleteMember(String id);
}

class MembersOnlineDataSource implements MembersDataSource {
  @override
  Future<Either<List<MemberModel>, Stream<List<MemberModel>>>>
      getMembers() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final membersCollectionRef = FirebaseFirestore.instance
          .collection('Users')
          .doc(user.uid)
          .collection('Members')
          .withConverter<MemberModel>(
              fromFirestore: (snapshot, _) =>
                  MemberModel.fromJson(snapshot.data()!),
              toFirestore: (MemberModel member, _) => member.toJson());

      // Fetch documents from the collection
      var data = await membersCollectionRef.get();

      // get data stream
      Stream<List<MemberModel>> stream =
          membersCollectionRef.snapshots().map((snapshot) {
        return snapshot.docs.map((doc) => doc.data()).toList();
      });

      // If no documents exist in the collection (or collection doesn't exist)
      if (data.docs.isEmpty) {
        print(
            "${user.uid}>>>>>>>>>>>>>>>>> It is empty or no collection<<<<<<<<<<<");
        return const Left([]); // Return empty list if collection is empty
      }

      // Map documents to MemberModel if there are any
      // List<MemberModel> membersList =
      //     data.docs.map((document) => document.data()).toList();

      print(">>>>>>>>>Found Members<<<<<<<<<<<<<<<");
      return Right(stream); // Return the list of valid members
    } else {
      print("No user is currently logged in.");
      return const Left([]); // Return empty list if no user is logged in
    }
  }

  @override
  Future<void> addMember(MemberModel member) async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final membersCollectionRef = FirebaseFirestore.instance
          .collection('Users')
          .doc(user.uid)
          .collection('Members')
          .withConverter<MemberModel>(
              fromFirestore: (snapshot, _) =>
                  MemberModel.fromJson(snapshot.data()!),
              toFirestore: (MemberModel member, _) => member.toJson());

      final memberDocRef = membersCollectionRef.doc();
      member.id = memberDocRef.id;
      return memberDocRef.set(member);

      // Fetch documents from the collection
    }
  }

  @override
  Future<void> deleteMember(String id) async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      print("deleted member id is $id");
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(user.uid)
          .collection('Members')
          .doc(id)
          .delete();
    }
  }
}
