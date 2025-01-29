import 'package:dartz/dartz.dart';

import '../../data/models/member_model.dart';

abstract class MembersRepositories {
  Future<void> addMember(MemberModel member);

  Future<void> deleteMember(String id);
  Future<Either<List<MemberModel>, Stream<List<MemberModel>>>> getMembers();
}
